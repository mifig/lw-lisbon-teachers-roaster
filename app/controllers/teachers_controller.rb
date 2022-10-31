class TeachersController < ApplicationController
  require "rest-client"
  require "json"
  require 'csv'
  
  before_action :set_teacher, only: [:edit, :update, :destroy]
  
  COURSE_SLUGS = ["web", "data"]

  def management
    @schools = current_user.schools
    @teachers = Teacher.all.order(:github_nickname)
  end

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to teachers_mgmt_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    if params[:teacher].present? 
      if params[:teacher][:file].present?
        Teacher.import(params[:teacher][:file])
        update_roaster
      elsif params[:teacher][:github_nickname].present?
        if Teacher.find_by(teacher_params)
          flash[:notice] = "Teacher already in database"
          redirect_to new_teacher_path
        else
          @teacher = Teacher.new(teacher_params) 
          
          if !@teacher.save
            render :new, status: :unprocessable_entity
          end
      
          update_roaster
        end
      else
        flash[:notice] = "Please insert a github nickname"
        redirect_to new_teacher_path
      end
    else
      flash[:notice] = "Please upload a csv file"
      redirect_to new_teacher_path
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_mgmt_path, status: :see_other
  end

  def update_roaster
    school = School.find(params[:school_id])
    teachers = Teacher.where(school: school)

    COURSE_SLUGS.each do |course_slug|
      course_days = BootcampsWeek.where(course_slug: course_slug)
      
      course_days.each do |day|
        day_info = parse_api(day, course_slug)
        
        teachers.each do |teacher|
          
          teacher_new_info = day_info.find { |teacher_info| teacher_info["github_nickname"] == teacher.github_nickname }
          if teacher_new_info
            update_teacher_roaster(teacher, teacher_new_info, school)
            update_teacher_availability(teacher_new_info, day, school)
          end
        end
      end
    end

    redirect_to dashboard_path
  end

  def export_roaster
    @school = School.find(params[:school_id])

    set_teachers_availabilities

    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"teachers_roaster_#{Date.today}.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end

  private 

  def teacher_params
    params.require(:teacher).permit(:github_nickname)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id]) 
  end

  def set_teachers_availabilities
    join_table_sql = BootcampsWeek.joins(:teachers_availabilities)
                                  .select(
                                    "bootcamps_weeks.id, 
                                     bootcamps_weeks.course_slug, 
                                     bootcamps_weeks.week, 
                                     bootcamps_weeks.lecture_day_slug,
                                     teachers_availabilities.teachers_roasters_id,
                                     teachers_availabilities.lecturer_work_day_count,
                                     teachers_availabilities.lead_ta_work_day_count,
                                     teachers_availabilities.ta_work_day_count")
                                  .to_sql

    @teachers_availabilities = TeachersRoaster.select(
                                                "A.id, 
                                                A.course_slug, 
                                                A.week, 
                                                A.lecture_day_slug,
                                                A.teachers_roasters_id,
                                                teachers_roasters.teacher_id,
                                                teachers_roasters.first_name,
                                                teachers_roasters.last_name,
                                                teachers_roasters.github_nickname,
                                                teachers_roasters.city_of_residence,
                                                teachers_roasters.country_of_residence,
                                                teachers_roasters.teacher_profile_url,
                                                A.lecturer_work_day_count,
                                                A.lead_ta_work_day_count,
                                                A.ta_work_day_count
                                                ")
                                              .where(github_nickname: Teacher.to_a, school: @school)
                                              .joins("INNER JOIN (" + join_table_sql + ") A ON A.teacher_id = teachers_roasters.teacher_id")
                                              .order("A.id ASC")
  end

  def parse_api(day, course_slug)
    url = "https://kitt.lewagon.com/api/v1/teachers?path=#{day.lecture_day_slug}&course_slug=#{course_slug}"
    response = RestClient.get(url, { Authorization: "Bearer c772004a088645189bc5fb530ac85376" })
    parsed_response = JSON.parse(response.body)
    parsed_response["teachers"]
  end

  def get_teacher_roaster(teacher, school)
    TeachersRoaster.find_by(github_nickname: teacher.github_nickname, school: school)
  end

  def update_teacher_roaster(teacher, teacher_new_info, school)
    if get_teacher_roaster(teacher, school).nil?
      TeachersRoaster.create(
        teacher_id: teacher_new_info["id"],
        first_name: teacher_new_info["first_name"],
        last_name: teacher_new_info["last_name"],
        github_nickname: teacher_new_info["github_nickname"],
        city_of_residence: teacher_new_info["city_of_residence"],
        country_of_residence: teacher_new_info["country_of_residence"],
        teacher_profile_url: teacher_new_info["teacher_profile_url"],
        school_id: school.id
      )
    end
  end

  def update_teacher_availability(teacher_new_info, day, school)
    if TeachersAvailability.find_by(bootcamps_week_id: day.id, teachers_roasters_id: TeachersRoaster.find_by(teacher_id: teacher_new_info["id"]).id)
      TeachersAvailability.find_by(bootcamps_week_id: day.id, teachers_roasters_id: TeachersRoaster.find_by(teacher_id: teacher_new_info["id"]).id).update(
        lecturer_work_day_count: teacher_new_info["lecturer_work_day_count"],
        lead_ta_work_day_count: teacher_new_info["lead_ta_work_day_count"],
        ta_work_day_count: teacher_new_info["ta_work_day_count"]
      )
    else
      TeachersAvailability.create(
        lecturer_work_day_count: teacher_new_info["lecturer_work_day_count"],
        lead_ta_work_day_count: teacher_new_info["lead_ta_work_day_count"],
        ta_work_day_count: teacher_new_info["ta_work_day_count"],
        teachers_roasters_id: TeachersRoaster.find_by(teacher_id: teacher_new_info["id"]).id,
        bootcamps_week_id: day.id
      )
    end
  end
end

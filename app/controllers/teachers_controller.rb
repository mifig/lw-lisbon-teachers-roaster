class TeachersController < ApplicationController
  require "rest-client"
  require "json"
  
  before_action :set_teacher, only: [:create, :edit, :update, :destroy]
  
  COURSE_SLUGS = ["web", "data"]

  def management
    @teachers = Teacher.all.order(:first_name)
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
    @teacher = Teacher.new(teacher_params)
    
    if @teacher.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_mgmt_path, status: :see_other
  end

  def update_roaster
    teachers = Teacher.all

    COURSE_SLUGS.each do |course_slug|
      course_days = BootcampsWeek.where(course_slug: course_slug)
      
      course_days.each do |day|
        day_info = parse_api(day, course_slug)
        
        teachers.each do |teacher|
          
          teacher_new_info = day_info.find { |teacher_info| teacher_info["github_nickname"] == teacher.github_nickname }
          
          if teacher_new_info
            update_teacher_roaster(teacher, teacher_new_info)
            update_teacher_availability(teacher_new_info, day)
          else
            if get_teacher_roaster(teacher)
              TeachersAvailability.create(
                lecturer_work_day_count: 0,
                lead_ta_work_day_count: 0,
                ta_work_day_count: 0,
                teacher_id: get_teacher_roaster(teacher).teacher_id,
                bootcamps_week_id: day.id
              )
            end
          end
        end
      end
    end

    redirect_to teachers_mgmt_path
  end

  private 

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :github_nickname)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id]) 
  end

  def parse_api(day, course_slug)
    url = "https://kitt.lewagon.com/api/v1/teachers?path=#{day.lecture_day_slug}&course_slug=#{course_slug}"
    response = RestClient.get(url, { Authorization: "Bearer c772004a088645189bc5fb530ac85376" })
    parsed_response = JSON.parse(response.body)
    parsed_response["teachers"]
  end

  def get_teacher_roaster(teacher)
    TeachersRoaster.find_by(github_nickname: teacher.github_nickname)
  end

  def update_teacher_roaster(teacher, teacher_new_info)
    if get_teacher_roaster(teacher).nil?
      TeachersRoaster.create(
        teacher_id: teacher_new_info["id"],
        first_name: teacher_new_info["first_name"],
        last_name: teacher_new_info["last_name"],
        github_nickname: teacher_new_info["github_nickname"],
        city_of_residence: teacher_new_info["city_of_residence"],
        country_of_residence: teacher_new_info["country_of_residence"],
        teacher_profile_url: teacher_new_info["teacher_profile_url"]
      )
    end
  end

  def update_teacher_availability(teacher_new_info, day)
    if TeachersAvailability.find_by(teacher_id: teacher_new_info["id"])
      TeachersAvailability.update(
        lecturer_work_day_count: teacher_new_info["lecturer_work_day_count"],
        lead_ta_work_day_count: teacher_new_info["lead_ta_work_day_count"],
        ta_work_day_count: teacher_new_info["ta_work_day_count"]
      )
    else
      TeachersAvailability.create(
        lecturer_work_day_count: teacher_new_info["lecturer_work_day_count"],
        lead_ta_work_day_count: teacher_new_info["lead_ta_work_day_count"],
        ta_work_day_count: teacher_new_info["ta_work_day_count"],
        teacher_id: teacher_new_info["id"],
        bootcamps_week_id: day.id
      )
    end
  end
end

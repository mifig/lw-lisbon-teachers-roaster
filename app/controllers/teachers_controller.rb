class TeachersController < ApplicationController
  require "rest-client"
  require "json"
  require 'csv'
  
  before_action :set_teacher, only: [:edit, :update, :destroy]
  before_action :set_school, only: [:new, :update_roaster, :export_roaster]
  
  COURSE_SLUGS = ["web", "data"]

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
    @school = School.find(params.dig(:teacher, :school_id))

    if params[:teacher][:file].present?
      Teacher.import(params[:teacher][:file], @school.id)
      LwApi::FetchTeachersIds.call(params: params)
      LwApi::FetchTeachersExperience.call
      redirect_to dashboard_path(@school)
    elsif params[:teacher][:github_nickname].present?
      if Teacher.find_by(teacher_params)
        flash[:notice] = "Teacher already in database"
        redirect_to new_teacher_path(@school)
      else
        Teacher.create(teacher_params) 
        LwApi::FetchTeachersIds.call(params: params)
        LwApi::FetchTeachersExperience.call(school: @school)
        redirect_to dashboard_path(@school)
      end
    end
  end

  def destroy
    @teacher.destroy
    redirect_to school_mgmt_path(@teacher.school), status: :see_other
  end

  def update_roaster
    LwApi::FetchTeachersExperience.call(school: @school)

    redirect_to dashboard_path(@school)
  end

  def export_roaster
    @teachers_availabilities = LwApi::FetchTeachersAvailabilities.call(school: @school).teachers_availabilities

    roaster_csv = CSV.generate do |csv|
      csv.to_io.write("\xEF\xBB\xBF")
      csv << @teachers_availabilities.first.attributes.keys
      @teachers_availabilities.each do |teacher_availability|
        csv << teacher_availability.attributes.values_at(*@teachers_availabilities.first.attributes.keys)
      end
    end

    respond_to do |format|
      format.html
      format.csv do
        send_data roaster_csv,
                  filename: "teachers_roaster_#{@school.city}_#{Date.today}.csv", 
                  type: 'text/csv',
                  disposition: 'attachment'
      end
    end
  end

  private 

  def teacher_params
    params.require(:teacher).permit(:github_nickname, :school_id)
  end

  def set_teacher
    @teacher = Teacher.find(params[:id]) 
  end

  def set_school
    @school = School.find(params[:school_id])
  end
end

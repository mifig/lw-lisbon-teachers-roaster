class SchoolsController < ApplicationController
  before_action :set_school, only: [:dashboard, :management, :update_teachers_experience]

  def dashboard
    @teachers_availabilities = LwApi::FetchTeachersAvailabilities.call(school: @school).teachers_availabilities
    @last_update = TeachersAvailability.maximum(:updated_at)
  end

  def management
    @teachers = Teacher.where(school: @school).order(:github_nickname)
  end

  private
  
  def set_school
    @school = School.find(params[:school_id])
  end
end

class SchoolsController < ApplicationController

  def dashboard
    @school = School.find(params[:school_id])
    set_teachers_availabilities
    @last_update = TeachersAvailability.maximum(:updated_at)
  end

  private

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
                                              .where(github_nickname: Teacher.to_a, school_id: @school.id)
                                              .joins("INNER JOIN (" + join_table_sql + ") A ON A.teachers_roasters_id = teachers_roasters.id")
                                              .order("A.id ASC")
  end
end

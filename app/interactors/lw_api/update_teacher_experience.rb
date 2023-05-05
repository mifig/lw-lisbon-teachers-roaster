module LwApi
  class UpdateTeacherExperience
    include Interactor

    def call
      if TeachersAvailability.find_by(bootcamps_week_id: context.day.id, teachers_roaster_id: context.teacher.id).present?
        TeachersAvailability.find_by(bootcamps_week_id: context.day.id, teachers_roaster_id: context.teacher.id).update(
          lecturer_work_day_count: context.infos["lecturer_work_day_count"],
          lead_ta_work_day_count: context.infos["lead_ta_work_day_count"],
          ta_work_day_count: context.infos["ta_work_day_count"]
        )
      else
        TeachersAvailability.create(
          lecturer_work_day_count: context.infos["lecturer_work_day_count"],
          lead_ta_work_day_count: context.infos["lead_ta_work_day_count"],
          ta_work_day_count: context.infos["ta_work_day_count"],
          teachers_roaster_id: context.teacher.id,
          bootcamps_week_id: context.day.id
        )
      end
    end
  end
end
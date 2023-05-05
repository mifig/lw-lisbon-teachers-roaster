module LwApi
  class FetchTeachersIds
    include Interactor

    COURSE_SLUGS = ["web", "data"]

    def call
      school = context.params[:school_id] ? School.find(context.params[:school_id]) : School.find(context.params.dig(:teacher, :school_id))
      teachers = Teacher.where(school: school)

      all_teachers_in_roaster = teachers.all? { |teacher| TeachersRoaster.find_by(github_nickname: teacher.github_nickname) }
      i = 0
      until all_teachers_in_roaster
        course_slug = COURSE_SLUGS[i]
        course_days = BootcampsWeek.where(course_slug: course_slug)
        
        course_days.each do |day|
          break if all_teachers_in_roaster
          day_info = LwApi::FetchTeachersOfTheDay.call(day: day, course_slug: course_slug)
          
          teachers.each do |teacher|
            fetched_teacher = day_info.teachers.find { |teacher_info| teacher_info["github_nickname"] == teacher.github_nickname }

            if fetched_teacher
              LwApi::UpdateTeacherId.call(fetched_teacher: fetched_teacher, school: school)
            end
          end
        end

        i += 1
        all_teachers_in_roaster = teachers.all? { |teacher| TeachersRoaster.find_by(github_nickname: teacher.github_nickname) }
      end
    end
  end
end
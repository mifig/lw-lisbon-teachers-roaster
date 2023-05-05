module LwApi
  class FetchTeachersExperience
    include Interactor

    def call
      TeachersRoaster.all.each do |teacher|
        url = "https://kitt.lewagon.com/api/v1/teachers/#{teacher.teacher_id}"
        response = RestClient.get(url, { Authorization: "Bearer c772004a088645189bc5fb530ac85376" })
        teacher_experience = JSON.parse(response.body)
        teacher_experience.each do |courses|
          courses.each do |course, day|
            day.first.each do |day, infos|
              bootcamp_day = BootcampsWeek.find_or_create_by(course_slug: course, lecture_day_slug: day)

              LwApi::UpdateTeacherExperience.call(
                teacher: teacher, 
                day: bootcamp_day, 
                infos: infos, 
                school: context.school
              )
            end
          end
        end
      end
    end
  end
end

module LwApi
  class UpdateTeacherId
    include Interactor

    def call
      teacher = TeachersRoaster.find_by(github_nickname: context.fetched_teacher["github_nickname"], school: context.school)
      
      if teacher.nil?
        TeachersRoaster.create(
          teacher_id: context.fetched_teacher["id"],
          first_name: context.fetched_teacher["first_name"],
          last_name: context.fetched_teacher["last_name"],
          github_nickname: context.fetched_teacher["github_nickname"],
          city_of_residence: context.fetched_teacher["city_of_residence"],
          country_of_residence: context.fetched_teacher["country_of_residence"],
          teacher_profile_url: context.fetched_teacher["teacher_profile_url"],
          school_id: context.school.id
        )
      end
    end
  end
end
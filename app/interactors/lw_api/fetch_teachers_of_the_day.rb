module LwApi
  class FetchTeachersOfTheDay
    include Interactor

    def call
      url = "https://kitt.lewagon.com/api/v1/teachers?path=#{context.day.lecture_day_slug}&course_slug=#{context.course_slug}"
      response = RestClient.get(url, { Authorization: "Bearer c772004a088645189bc5fb530ac85376" })
      parsed_response = JSON.parse(response.body)
      context.teachers = parsed_response["teachers"]
    end
  end
end
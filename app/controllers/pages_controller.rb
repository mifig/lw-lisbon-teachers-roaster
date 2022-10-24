class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @teachers = TeachersRoaster.all.order(:first_name)
  end
end

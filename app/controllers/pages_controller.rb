class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @schools = current_user.schools if user_signed_in?
  end

  def management
    @schools = current_user.schools
  end
end

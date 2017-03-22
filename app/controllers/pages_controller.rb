class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @sports = Sport.all
  end

  def styleguide
    @base_font   = "Open Sans"
    @header_font = "Montserrat"
    @button_font = "Titan One"
  end
end

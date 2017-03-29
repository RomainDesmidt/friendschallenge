class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @sports = [ Sport.find_by_name("Natation"),
                Sport.find_by_name("Cyclisme"),
                Sport.find_by_name("Course à pied")]
  end

  def styleguide
    @base_font   = "Open Sans"
    @header_font = "Montserrat"
    @button_font = "Titan One"
  end
end

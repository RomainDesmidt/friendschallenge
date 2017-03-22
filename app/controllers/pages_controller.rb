class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @sports = Sport.all
  end

  def styleguide
    @base_font   = "Roboto"
    @header_font = "Montserrat"
  end
end

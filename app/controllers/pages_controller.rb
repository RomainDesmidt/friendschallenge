class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def styleguide
    @base_font   = "Open Sans"
    @header_font = "Raleway"
  end
end

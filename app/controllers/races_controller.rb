class RacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
  end
end

class RacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index

    # @races = Sport.where({name: params[:search][:sports_name]})

    @races = Race.joins(:sports).where("sports.name IN (?)", params[:search][:sports_name])

    @races = @races.where('location ILike ?', "%#{params[:search][:place]}%").where.not(latitude: nil, longitude: nil)
    if params[:search][:date] != ""
      binding.pry
    end

    # sport ILike ?
    #"%#{params[:search][:sports_name]}%",
    # binding.pry

    @place_markers_hash = Gmaps4rails.build_markers(@races) do |race, marker|
      marker.lat race.latitude
      marker.lng race.longitude
      marker.infowindow( race.name )
    end


    # select (*
    #   FROM sports
    #   INNER JOIN race_sports
    #   ON sports.id = race_sports.sport_id
    #   ).where(race.sports IN params[:search][:sports_name])
  end

  def show
    @race = Race.find(params[:id])
  end

  # scope :status, -> (status) { where status: status }
  # scope :location, -> (location_id) { where location_id: location_id }
  # scope :starts_with, -> (name) { where("name like ?", "#{name}%")}

end

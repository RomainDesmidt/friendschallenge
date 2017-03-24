class RacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @races = Race.where.not(latitude: nil, longitude: nil)
    @place_markers_hash = Gmaps4rails.build_markers(@races) do |race, marker|
      marker.lat race.latitude
      marker.lng race.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @race = Race.find(params[:id])
  end

end

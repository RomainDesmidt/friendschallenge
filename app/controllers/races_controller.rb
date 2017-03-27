class RacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # @races = Sport.where({name: params[:search][:sports_name]})
    @races = Race.where('location ILike ?', "%#{params[:search][:place]}%").where.not(latitude: nil, longitude: nil)
    # sport ILike ?
    #"%#{params[:search][:sports_name]}%",
    # binding.pry
    @place_markers_hash = Gmaps4rails.build_markers(@races) do |race, marker|
      marker.lat        race.latitude
      marker.lng        race.longitude
      marker.title      race.name
      marker.infowindow render_to_string(partial: "/races/map_infowindow", locals:  { race: race })
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @race = Race.find(params[:id])
  end

  # scope :status, -> (status) { where status: status }
  # scope :location, -> (location_id) { where location_id: location_id }
  # scope :starts_with, -> (name) { where("name like ?", "#{name}%")}

end

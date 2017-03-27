class RacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index

    # @races = Sport.where({name: params[:search][:sports_name]})
    if params[:search][:sports_name].nil?
      @races = Race.all
    else
      @races = Race.joins(:sports).where("sports.name IN (?)", params[:search][:sports_name])
    end

    unless params[:search][:place].nil?
      @races = @races.where("location ILike ?", "%#{params[:search][:place]}%").where.not(latitude: nil, longitude: nil)
    end

    # if @races.any?
    if params[:search][:date] != ""
      # binding.pry
      @date_search = Date.parse(params[:search][:date])
      @races = @races.where(date: @date_search)
    end
    # end

    # sport ILike ?
    #"%#{params[:search][:sports_name]}%",

    if @races
      # binding.pry
      @place_markers_hash = Gmaps4rails.build_markers(@races) do |race, marker|
        marker.lat        race.latitude
        marker.lng        race.longitude
        marker.title      race.name
        marker.infowindow render_to_string(partial: "/races/map_infowindow", locals:  { race: race })
        # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    end
  end

  def show
    @race = Race.find(params[:id])
  end

  # scope :status, -> (status) { where status: status }
  # scope :location, -> (location_id) { where location_id: location_id }
  # scope :starts_with, -> (name) { where("name like ?", "#{name}%")}

end

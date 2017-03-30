class RacesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @sport_names = params[:search][:sports_name]

    if @sport_names.nil?
      @races = Race.all
    else
      @races = Race.joins(:sports).where("sports.name IN (?)", @sport_names)
    end

    unless params[:search][:place].nil?
      @races = @races.where("location ILike ?", "%#{params[:search][:place]}%").where.not(latitude: nil, longitude: nil)
    end

    if params[:search][:date] != ""
      @date_search = Date.parse(params[:search][:date])
      @races = @races.where(date: @date_search)
    end

    if @races
      @place_markers_hash = Gmaps4rails.build_markers(@races) do |race, marker|
        marker.lat        race.latitude
        marker.lng        race.longitude
        marker.title      race.name
        marker.infowindow render_to_string(partial: "/races/map_infowindow", locals:  { race: race })
      end
    end
    @sports = Sport.all
  end

  def show
    @race = Race.find(params[:id])

    if current_user
      @group_membership = @race.group_memberships.where(user_id: current_user).first
      # @race_group = @group_membership.race_group if @group_membership
      # @race_group = @race.race_groups.joins(:group_memberships).where("group_memberships.user_id = ?", current_user.id).first
      return redirect_to race_group_path(@group_membership.race_group ) if @group_membership
    end

    @sports = Sport.all
  end
end

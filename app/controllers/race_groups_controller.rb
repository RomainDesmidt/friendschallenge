class RaceGroupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @race_group = RaceGroup.find(params[:id])
    @race = @race_group.race
    @members = @race_group.members
  end

  def create
    @race_group = RaceGroup.new(user: current_user, race: Race.find(params[:race_id]))
    @race_group.save
    @new_member = GroupMembership.create(user: current_user, race_group: @race_group, status: "Intéressé")
  end

end

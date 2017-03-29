class RaceGroupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @race_group = RaceGroup.find(params[:id])
    @race = @race_group.race
    @members = @race_group.members

    if current_user
      @group_membership = @race_group.group_memberships.where(user_id: current_user).first
    end
  end

  def create
    @race_group = RaceGroup.new(user: current_user, race: Race.find(params[:race_id]))
    @race_group.save
    @new_member = GroupMembership.create(user: current_user, race_group: @race_group, status: "Intéressé")

    redirect_to race_group_path(@race_group)
  end
end

class GroupMembershipsController < ApplicationController
 # require_before_action :authenticate_user!

  def create
    @race_group = RaceGroup.find(params[:race_group_id])
    @new_member = GroupMembership.create(user:current_user, race_group: @race_group, status: "Intéressé" )
    redirect_to race_group_path(@race_group)

end

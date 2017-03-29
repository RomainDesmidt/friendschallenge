class GroupMembershipsController < ApplicationController
 # require_before_action :authenticate_user!

  def create
    @race_group = RaceGroup.find(params[:race_group_id])
    @new_member = GroupMembership.create(user:current_user, race_group: @race_group, status: "Intéressé" )
    redirect_to race_group_path(@race_group)
  end

  def confirm
    membership = current_user.group_memberships.where(status: "Intéressé").find(params[:id])
    membership.update(status: "Confirmé")

    redirect_to race_group_path(membership.race_group)
  end

  def cancel
    membership = current_user.group_memberships.where(status: "Confirmé").find(params[:id])
    membership.update(status: "Annulé")

    redirect_to race_group_path(membership.race_group)
  end
end

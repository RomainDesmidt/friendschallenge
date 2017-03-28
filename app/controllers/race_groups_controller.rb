class RaceGroupsController < ApplicationController
  def show
    @race_group = RaceGroup.find_by_user(current_user)
  end

  def create(race)
    @race_group = RaceGroup.new(current_user, race)
  end

end

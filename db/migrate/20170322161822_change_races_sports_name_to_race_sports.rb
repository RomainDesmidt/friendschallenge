class ChangeRacesSportsNameToRaceSports < ActiveRecord::Migration[5.0]
  def change
    rename_table :races_sports, :race_sports
  end
end

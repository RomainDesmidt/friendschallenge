class DropUserRaces < ActiveRecord::Migration[5.0]
  def change
    drop_table :user_races
  end
end

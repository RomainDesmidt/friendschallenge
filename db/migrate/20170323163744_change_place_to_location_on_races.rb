class ChangePlaceToLocationOnRaces < ActiveRecord::Migration[5.0]
  def change
    rename_column :races, :place, :location
  end
end

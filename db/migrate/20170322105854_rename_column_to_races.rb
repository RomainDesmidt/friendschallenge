class RenameColumnToRaces < ActiveRecord::Migration[5.0]
  def change
    rename_column :races, :distance, :total_distance
    change_column :races, :total_distance, :float
  end
end

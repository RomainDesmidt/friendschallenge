class AddNameToRaceGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :race_groups, :name, :string
  end
end

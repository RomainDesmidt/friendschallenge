class AddColumnToRaceSports < ActiveRecord::Migration[5.0]
  def change
    add_column :races_sports, :distance, :float
  end
end

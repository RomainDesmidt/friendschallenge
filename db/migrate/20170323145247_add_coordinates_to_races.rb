class AddCoordinatesToRaces < ActiveRecord::Migration[5.0]
  def change
    add_column :races, :latitude, :float
    add_column :races, :longitude, :float
  end
end

class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.text :description
      t.string :name
      t.string :place
      t.integer :distance
      t.date :date
      t.integer :price
      t.string :official_event_url
      t.string :picture
      t.string :trail_map_url
      t.string :trail_map_picture
      t.string :level
      t.string :status

      t.timestamps
    end
  end
end

class CreateRacesSports < ActiveRecord::Migration[5.0]
  def change
    create_table :races_sports do |t|
      t.references :race, foreign_key: true
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end

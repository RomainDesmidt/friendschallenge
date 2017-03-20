class CreateSharedRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :shared_races do |t|
      t.references :user, foreign_key: true
      t.references :user_race, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

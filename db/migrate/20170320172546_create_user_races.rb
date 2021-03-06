class CreateUserRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :user_races do |t|
      t.references :user, foreign_key: true
      t.references :race, foreign_key: true
      t.string :status
      t.string :token

      t.timestamps
    end
  end
end

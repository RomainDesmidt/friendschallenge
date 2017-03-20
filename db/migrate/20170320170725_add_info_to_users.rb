class AddInfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_picture, :string
    add_column :users, :medical_certifate, :string
    add_column :users, :medical_certifate_date, :date
    add_column :users, :level, :string
    add_column :users, :address, :string
  end
end

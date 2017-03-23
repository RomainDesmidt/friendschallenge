class AddColumnLinearBackgroundToSports < ActiveRecord::Migration[5.0]
  def change
    add_column :sports, :linear_background, :string
    rename_column :users, :medical_certifate, :medical_certificate
    rename_column :users, :medical_certifate_date, :medical_certificate_date
  end
end

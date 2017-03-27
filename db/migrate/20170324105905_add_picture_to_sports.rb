class AddPictureToSports < ActiveRecord::Migration[5.0]
  def change
    add_column :sports, :picture_path, :string
  end
end

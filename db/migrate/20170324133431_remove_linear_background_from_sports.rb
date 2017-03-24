class RemoveLinearBackgroundFromSports < ActiveRecord::Migration[5.0]
  def change
    remove_column :sports, :linear_background
  end
end

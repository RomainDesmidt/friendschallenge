class CreateGroupMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :group_memberships do |t|
      t.references :user, foreign_key: true
      t.references :race_group, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end

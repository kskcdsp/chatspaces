class CreateGroupsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :groups_users do |t|
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
      t.timestamps
    end
  add_index :groups_users, [:group_id, :user_id], unique: true
  end
end

class ChangeColumnToUsers < ActiveRecord::Migration[5.0]
  def up
    change_table :users do |t|
      change_column :users, :name, :string, index: true
      change_column :users, :name, :string, unique: true
      change_column :users, :name, :string, null: false
    end
  end
  def down
    change_table :users do |t|
      change_column :users, :name, :string
    end
  end
end

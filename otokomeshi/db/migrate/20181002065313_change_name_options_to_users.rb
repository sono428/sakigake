class ChangeNameOptionsToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :name, :string, null: false, default: ""
    add_index :users, :name, unique: true
  end
 
  def down
    change_column :users, :name, :string, null: true, default: nil
  end
end

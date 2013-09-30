class AddUserIdToDexes < ActiveRecord::Migration
  def change
    add_column :dexes, :user_id, :integer
    add_index :dexes, :user_id
  end
end

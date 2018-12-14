class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :user_name
  end

  def down
    add_column :users, :user_name, :integer
  end
end

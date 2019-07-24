class AddFollowersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :followers, :integer , array: true, default: []
    add_column :users, :followees, :integer , array: true, default: []
  end
end

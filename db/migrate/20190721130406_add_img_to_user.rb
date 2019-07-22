class AddImgToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :img, :string, :default => "https://stayhipp.com/wp-content/uploads/2019/06/f35.jpg"
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :string
  end
end

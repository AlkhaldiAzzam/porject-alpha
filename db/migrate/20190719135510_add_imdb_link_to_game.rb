class AddImdbLinkToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :imdb_link, :string
  end
end

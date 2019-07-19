class AddImdbLinkToAnime < ActiveRecord::Migration[5.2]
  def change
    add_column :animes, :imdb_link, :string
  end
end

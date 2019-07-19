class AddImdbLinkToTvShow < ActiveRecord::Migration[5.2]
  def change
    add_column :tv_shows, :imdb_link, :string
  end
end

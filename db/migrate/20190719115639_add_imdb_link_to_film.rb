class AddImdbLinkToFilm < ActiveRecord::Migration[5.2]
  def change
    add_column :films, :imdb_link, :string
  end
end

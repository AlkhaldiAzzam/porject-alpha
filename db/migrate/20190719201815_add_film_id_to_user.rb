class AddFilmIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :films_id, :integer , array: true, default: []
    add_column :users, :animes_id, :integer , array: true, default: []
    add_column :users, :games_id, :integer , array: true, default: []
    add_column :users, :TvShows_id, :integer , array: true, default: []
  end
end

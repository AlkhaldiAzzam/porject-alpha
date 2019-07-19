class CreateTvShows < ActiveRecord::Migration[5.2]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.integer :rating
      t.string :poster
      t.string :trailer
      t.text :plot
      t.integer :user_id
      t.integer :seasons

      t.timestamps
    end
  end
end

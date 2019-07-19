class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :title
      t.integer :rating
      t.string :poster
      t.string :trailer
      t.text :plot
      t.integer :user_id

      t.timestamps
    end
  end
end

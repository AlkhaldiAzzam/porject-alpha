class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.text :plot
      t.integer :rating
      t.string :trailer
      t.string :poster

      t.timestamps
    end
  end
end

class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :poster
      t.string :released
      t.string :genre
      t.text :plot
      t.string :rating

      t.timestamps
    end
  end
end

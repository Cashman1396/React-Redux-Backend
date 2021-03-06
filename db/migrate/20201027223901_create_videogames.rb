class CreateVideogames < ActiveRecord::Migration[6.0]
  def change
    create_table :videogames do |t|
      t.string :game_name
      t.string :game_genre
      t.string :game_rating
      t.string :game_platform
      t.text :description
      t.string :image_url
      t.integer :year_released
      t.integer :user_id
    end
  end
end

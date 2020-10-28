class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.belongs_to :videogame, null: false, foreign_key: true 
      t.belongs_to :user, null: false, foreign_key: true
    end
  end
end

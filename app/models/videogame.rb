class Videogame < ApplicationRecord
    has_many :comments
    has_many :users, through: :comments
    has_many :users, through: :user_videogame
    belongs_to :user

    validates :game_name, :game_genre, :game_rating, :game_platform, :description, :year_released, presence: true
end

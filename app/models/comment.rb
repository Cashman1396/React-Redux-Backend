class Comment < ApplicationRecord
    belongs_to :videogame
    belongs_to :user
end

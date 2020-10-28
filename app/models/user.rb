class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :videogames

    validates :username, :email presence: true, uniqueness: true

end

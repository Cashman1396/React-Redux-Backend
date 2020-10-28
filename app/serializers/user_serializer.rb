class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :videogames
  has_many :videogames, serializer: VideogameSerializer
end

class VideogameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :game_name, :game_genre, :game_rating, :game_platfrom, :year_released, :description, :image_url
end

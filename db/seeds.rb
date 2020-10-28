# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user = User.create([
    {username: "test",
    email: "test@email.com",
    password: "testing"}
])

test = User.first 

test_game = test.videogames.create(
    game_name: "Pokemon Sword and Shield",
    game_genre: "Role-Playing Game",
    game_rating: "E for Everyone",
    game_platform: "Nintendo Switch",
    year_released: 2019,
    description: "Pokémon Sword[a] and Pokémon Shield[b] are 2019 role-playing video games developed by Game Freak and published by The Pokémon Company and Nintendo for the Nintendo Switch.",
    image_url: "https://projectpokemon.org/home/uploads/monthly_2019_06/large.swordnshield.png.051ae8b21788af441c7493b55ff8ad85.png")
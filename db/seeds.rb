# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Film.destroy_all
Anime.destroy_all
TvShow.destroy_all
Game.destroy_all

50.times {Film.create(poster: Faker::LoremFlickr.image , imdb_link: Faker::Internet.url , plot: Faker::Lorem.paragraph + Faker::Lorem.paragraph + Faker::Lorem.paragraph , rating: 0 , title: Faker::Movies::HarryPotter.character  )}

50.times {Game.create(title: Faker::Game.title ,poster: Faker::LoremPixel.image , imdb_link: Faker::Internet.url , plot: Faker::Lorem.paragraph + Faker::Lorem.paragraph + Faker::Lorem.paragraph , rating: 0  )}

50.times {Anime.create(poster: Faker::LoremFlickr.colorized_image , imdb_link: Faker::Internet.url , plot: Faker::Lorem.paragraph + Faker::Lorem.paragraph + Faker::Lorem.paragraph , rating: 0 , title: Faker::Movies::HarryPotter.character  )}

50.times {TvShow.create(poster: "https://picsum.photos/200" , imdb_link: Faker::Internet.url , plot: Faker::Lorem.paragraph + Faker::Lorem.paragraph + Faker::Lorem.paragraph , rating: 0 , title: Faker::Movies::HarryPotter.character  )}

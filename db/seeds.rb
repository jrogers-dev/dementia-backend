# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(state: :created)
Game.create(state: :setup)
Game.create(state: :active)
Game.create(state: :complete)

Player.create(name: "Steve", game_id: 1)
Player.create(name: "Boo", game_id: 1)
Player.create(name: "Shemmy", game_id: 1)
Player.create(name: "Spongegar", game_id: 2)
Player.create(name: "Patar", game_id: 2)
Player.create(name: "Fweefwee", game_id: 2)
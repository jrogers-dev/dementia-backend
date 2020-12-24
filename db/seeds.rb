# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(state: :created)

Player.create(name: "Steve", game_id: 1)
Player.create(name: "Boo", game_id: 1)

Board.create(clear: false, rotation: 0, player_id: 1)
Board.create(clear: false, rotation: 90, player_id: 2)

for i in 1..2 do
    for j in 1..20 do
        pos = Position.create(board_id: i)
        Card.create(position_id: pos.id, value: j)
    end
end

Game.create(state: :setup)

Player.create(name: "Spongegar", game_id: 2)
Player.create(name: "Patar", game_id: 2)

Board.create(clear: false, rotation: 0, player_id: 3)
Board.create(clear: false, rotation: 90, player_id: 4)

for k in 3..4 do
    for l in 1..20 do
        pos = Position.create(board_id: k)
        Card.create(position_id: pos.id, value: l)
    end
end

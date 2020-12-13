class Game < ApplicationRecord
    enum state: [ :created, :setup, :active, :complete ]

end

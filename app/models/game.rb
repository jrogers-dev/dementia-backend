class Game < ApplicationRecord
    enum state: [ :created, :setup, :active, :complete ]
    has_many :players, dependent: :destroy
end

class Player < ApplicationRecord
  belongs_to :game
  has_one :board, dependent: :destroy
end

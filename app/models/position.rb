class Position < ApplicationRecord
  belongs_to :board
  has_one :card, dependent: :destroy
end

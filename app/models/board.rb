class Board < ApplicationRecord
  belongs_to :player
  has_many :positions, dependent: :destroy
end

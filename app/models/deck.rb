class Deck < ApplicationRecord
  validates :name, presence: true

  belongs_to :user, foreign_key: true
  has_many :cards
  has_many :rounds

end

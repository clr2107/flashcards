class Card < ApplicationRecord
  validates :question, :answer, presence: true

  belongs_to :deck, foreign_key: true
  has_many :guesses
end

class Round < ApplicationRecord
  has_many :guesses, class_name: "Guess", foreign_key: "round_id"

  belongs_to :user, foreign_key: true
  belongs_to :deck, foreign_key: true
end

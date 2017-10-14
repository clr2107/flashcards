class Round < ApplicationRecord
  has_many :guesses

  belongs_to :user, foreign_key: true
  belongs_to :deck, foreign_key: true
end

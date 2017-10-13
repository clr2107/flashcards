class Round < ApplicationRecord
  has_many :guesses, dependent :destroy
  belongs_to :user
  belongs_to :deck
end

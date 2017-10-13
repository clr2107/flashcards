class Card < ApplicationRecord
  # Remember to create a migration!
  validates :question, :answer, :deck_id presence: true

  belongs_to: deck
  has_many: guesses, dependent: destroy
end

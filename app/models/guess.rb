class Guess < ApplicationRecord
  validates :text, presence: true

  belongs_to :card, foreign_key: true
  belongs_to :round, foreign_key: true
end

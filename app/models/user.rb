class User < ApplicationRecord
  validates :username, :email, :password_digest, presence: true
  validates :email, :username, uniqueness: true

  has_many :decks
  has_many :rounds

  has_secure_password
end

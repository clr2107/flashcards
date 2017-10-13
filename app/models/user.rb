class User < ApplicationRecord
  # validates :username, presence: true, uniqueness: true
  # validates :email, presence: true, uniqueness: true
  # validates :password_digest, presence: true

  validates :username, :email, :password_digest, presence: true
  validates :email, :username, uniqueness: true


  has_many :decks
  has_many :rounds


  has_secure_password
end

class User < ApplicationRecord
  validates :email, :password, :nombre, :estado, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }


  has_many :comments
end

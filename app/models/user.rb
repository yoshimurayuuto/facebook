class User < ApplicationRecord
  has_many :feeds
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, {presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}, uniqueness: { case_sensitive: false }}
  # presence: true, length: { maximum: 255 }
  #                   format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
  #                   uniqueness: { case_sensitive: false }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end

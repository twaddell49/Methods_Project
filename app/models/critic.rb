class Critic < ActiveRecord::Base
  # attr_accessor :email, :name
  attr_accessible :email, :name, :password, :password_confirmation
  before_save { self.email = email.downcase }
  has_many :reviews
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL}, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }
end

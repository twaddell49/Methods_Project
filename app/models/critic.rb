class Critic < ActiveRecord::Base
  # attr_accessor :email, :name
  attr_accessible :email, :name, :password, :password_confirmation, :remember_token
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  has_many :reviews
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL}, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

  def Critic.new_remember_token
  	SecureRandom.urlsafe_base64
  end

  def Critic.encrypt(token)
  	Digest::SHA1.hexdigest(token.to_s)
  end

  private

  	def create_remember_token
  		self.remember_token = Critic.encrypt(Critic.new_remember_token)
  	end
end

class Critic < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :reviews
end

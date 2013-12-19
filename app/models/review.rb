class Review < ActiveRecord::Base
  attr_accessible :content, :score, :user_id
  validates :user_id, presence: true
end

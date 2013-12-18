class Review < ActiveRecord::Base
  attr_accessible :content, :score, :user_id
  belongs_to :critic
end

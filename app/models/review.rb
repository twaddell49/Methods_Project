class Review < ActiveRecord::Base
  belongs_to :critic
  attr_accessible :content, :score, :critic_id
  default_scope -> { order('created_at DESC')}
  validates :critic_id, presence: true
  validates :content, presence: true,  length: { maximum: 300 }
end

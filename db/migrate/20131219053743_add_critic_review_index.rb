class AddCriticReviewIndex < ActiveRecord::Migration
  def change
  	add_index :reviews, [:critic_id, :created_at]
  end
end

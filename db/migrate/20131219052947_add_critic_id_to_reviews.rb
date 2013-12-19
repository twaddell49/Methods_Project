class AddCriticIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :critic_id, :integer
  end
end

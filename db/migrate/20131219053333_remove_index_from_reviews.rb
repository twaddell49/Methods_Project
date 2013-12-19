class RemoveIndexFromReviews < ActiveRecord::Migration
  def change
  	remove_index(:reviews, :name => "index_reviews_on_user_id_and_created_at")
  end
end

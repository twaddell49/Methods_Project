class RemoveUserId < ActiveRecord::Migration
	def change
		remove_column :reviews, :user_id, :integer
	end
end

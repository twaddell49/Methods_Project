class AddIndexToCriticsEmail < ActiveRecord::Migration
  def change
  	add_index :critics, :email, unique: true
  end
end

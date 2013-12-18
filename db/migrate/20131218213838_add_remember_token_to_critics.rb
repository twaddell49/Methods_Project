class AddRememberTokenToCritics < ActiveRecord::Migration
  def change
  	add_column :critics, :remember_token, :string
  	add_index :critics, :remember_token
  end
end

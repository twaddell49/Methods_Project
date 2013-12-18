class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :esrb
      t.text :description
      t.string :console
      t.integer :players
      t.string :image_location

      t.timestamps
    end
  end
end

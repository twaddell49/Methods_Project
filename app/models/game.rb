class Game < ActiveRecord::Base
  attr_accessible :console, :description, :esrb, :image_location, :players, :title
end

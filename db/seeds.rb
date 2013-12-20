# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
games = [{
	:title => 'Halo 4', 
	:esrb => 'M', 
	:description => 'Join the Master Chief and Cortana as the confront an all new threat to humanity', 
	:release_date => '6-Nov-2012', 
	:console => 'Xbox 360', 
	:players => '4', 
	:image_location => "halo4.jpg"
	},
	{
	:title => 'The Last of Us',
	:esrb => 'M',
	:description => 'Help Joel',
	:release_date => '14-Jun-2013',
	:console => 'PS3',
	:players => '1',
	:image_location => "lastofus.jpg"
	}]

Game.send(:attr_accessible, :title, :esrb, :description, :release_date, :console, :players, :image_location)

games.each do |game|
	Game.create!(game)
end
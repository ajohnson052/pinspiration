# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
boards = Board.create([{title:'My Favorite Recipes', user_id:1},{title: 'My Favorite Vacation Spots', user_id:1}, {title: 'My Favorite Clothes', user_id:1}])
boards.each do |board|
  board.pins.create(title:'Sample Pin', image:'http://fillmurray.com/200/300', user_id:1)
end

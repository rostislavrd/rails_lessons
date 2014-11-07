# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(login: 'test_user_1', first_name: 'test_user_1', last_name: 'last_name_1')
user.posts.create(title: 'FIRST_USER_POST_1', body: 'first_useer_body_1')
user.posts.create(title: 'FIRST_USER_POST_2', body: 'first_useer_body_2')
user.posts.create(title: 'FIRST_USER_POST_3', body: 'first_useer_body_3')

user.posts.each do |post|
	5.times do |i|
		post.comments.create(title: "Title #{i}", message: "Title #{5-i}")
	end
end
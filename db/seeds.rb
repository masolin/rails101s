# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Hello World!"
create_account = User.create([email: 'example@example.com', password: '12345678', password_confirmation: '12345678', name: 'Test Account'])
create_groups = (1..20).each do |i|
  Group.create([title: "Group no.#{i}", description: "This is #{i} group", user_id: "1"])
  (1..30).each do |j|
    Post.create([group_id: "#{i}", content: "Fake content #{j}", user_id: "1"])
  end
end

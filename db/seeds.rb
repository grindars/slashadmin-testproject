# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

0.upto(256) do |id|
  Foo.create!(title: "foo #{id}")
end

User.create!(email: 'admin@example.com', password: 'admin', password_confirmation: 'admin')
User.create!(email: 'user@example.com', password: 'user', password_confirmation: 'user')

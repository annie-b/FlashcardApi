# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

users = User.create!([
  {name: 'Kelly', username: 'RubyQueen1', email: 'kelly@fake.com', password: '123'},
  {name: 'Matt', username: 'Matt1', email: 'matt@fake.com', password: '1234'},
  {name: 'Jodi', username: 'Jodi1', email: 'jodi@fake.com', password: '12345'}
  ])

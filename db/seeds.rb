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

categories = Category.create([
  {name: "Design"},
  {name: "Ruby"},
  {name: "Javascript"},
  {name: "AngularJS"},
  {name: "CSS"},
  {name: "HTML"},
  {name: "jQuery"},
  {name: "SQL"},
  {name: "Computer Science"},
  {name: "Testing"},
  {name: "C"},
  {name: "Python"}
])

resources = Resource.create([
  { title: "Ruby Warrior, Learn Ruby Programming with Bloc", url: "https://www.bloc.io/ruby-warrior#/", user_id: users[0].id},
  { title: "Code Wars", url: "https://www.codewars.com/users/sign_in", user_id: users[0].id},
  { title: "Exercism", url: "http://exercism.io/", user_id: users[0].id },
  { title: "typing.io", url: "https://typing.io/", user_id: users[0].id },
  { title: "Coderbyte", url: "http://coderbyte.com/", user_id: users[0].id },
  { title: "Code School", url: "https://www.codeschool.com/", user_id: users[0].id },
  { title: "Better Specs {rspec guidelines with ruby}", url: "http://betterspecs.org/", user_id: users[0].id },
  { title: "Relish, RSpec", url: "https://relishapp.com/rspec", user_id: users[0].id },
  { title: "Simple Programmer", url: "http://simpleprogrammer.com/", user_id: users[0].id },
  { title: "Test First", url: "http://testfirst.org/", user_id: users[0].id },
  { title: "Ruby on Rails Guides", url: "http://guides.rubyonrails.org/", user_id: users[0].id },
  { title: "PostgreSQL Documentation", url: "http://www.postgresql.org/docs/", user_id: users[0].id },
  { title: "FROONT, Open Design Blog", url: "http://blog.froont.com/positioning-in-web-design/", user_id: users[0].id },
  { title: "Hacker News", url: "https://news.ycombinator.com/", user_id: users[0].id },
  { title: "A List Apart", url: "http://alistapart.com/", user_id: users[0].id },
  { title: "Learn SQL The Hard Way", url: "http://sql.learncodethehardway.org/book/", user_id: users[0].id },
  { title: "Learn Ruby The Hard Way", url: "http://learnrubythehardway.org/", user_id: users[0].id },
  { title: "Learn Regex The Hard Way", url: "http://regex.learncodethehardway.org/", user_id: users[0].id },
  { title: "Learn C The Hard Way", url: "http://c.learncodethehardway.org/", user_id: users[0].id },
  { title: "Learn Python The Hard Way", url: "http://learnpythonthehardway.org/", user_id: users[0].id },
  { title: "Giant Robots Smashing into Other Giant Robots", url: "https://robots.thoughtbot.com/", user_id: users[0].id },
  { title: "Programmers Stack Exchange", url: "http://programmers.stackexchange.com/", user_id: users[0].id },
  { title: "Can I use", url: "http://caniuse.com/", user_id: users[0].id },
  { title: "Deploying a subfolder to GitHub Pages", url: "https://gist.github.com/cobyism/4730490", user_id: users[0].id },
  { title: "Angular Style Guide", url: "https://github.com/johnpapa/angular-styleguide", user_id: users[0].id },
  { title: "Colorful CSS Gradient Background", url: "http://www.webcore-it.com/colorful-background/#", user_id: users[0].id },
  { title: "Foundation Documentation", url: "http://foundation.zurb.com/docs/", user_id: users[0].id },
  { title: "Git Interactive Rebase, Squash, Amend and Other Ways of Rewriting History", url: "https://robots.thoughtbot.com/git-interactive-rebase-squash-amend-rewriting-history", user_id: users[0].id },
  { title: "Git Tutorial", url: "https://www.atlassian.com/git/tutorials/setting-up-a-repository", user_id: users[0].id },
  { title: "Who I want to Hire", url: "http://chadfowler.com/blog/2013/04/09/who-i-want-to-hire/", user_id: users[0].id },
  { title: "Eloquent Javascript", url: "http://eloquentjavascript.net/", user_id: users[0].id },
  { title: "Master Space and Time with Javascript", url: "http://www.noelrappin.com/mstwjs/", user_id: users[0].id },
  { title: "Developing Backbone.js Applications", url: "http://addyosmani.github.io/backbone-fundamentals/", user_id: users[0].id },
  { title: "You Don't Know JS", url: "https://github.com/getify/You-Dont-Know-JS/blob/master/README.md#you-dont-know-js-book-series", user_id: users[0].id },
  { title: "Learning Javascript Design Patterns", url: "http://www.addyosmani.com/resources/essentialjsdesignpatterns/book/", user_id: users[0].id },
  { title: "Node: Up and Running", url: "http://chimera.labs.oreilly.com/books/1234000001808/index.html", user_id: users[0].id },
  { title: "Speaking JS", url: "http://speakingjs.com/es5/", user_id: users[0].id }
])

resources[0].categories << Category.find_by(name:"Ruby")

resources[1].categories << Category.find_by(name:"Ruby")
resources[1].categories << Category.find_by(name:"Javascript")
resources[1].categories << Category.find_by(name:"C")
resources[1].categories << Category.find_by(name:"Python")

resources[2].categories << Category.find_by(name:"Ruby")
resources[2].categories << Category.find_by(name:"Javascript")
resources[2].categories << Category.find_by(name:"C")
resources[2].categories << Category.find_by(name:"Python")

resources[3].categories << Category.find_by(name:"Ruby")
resources[3].categories << Category.find_by(name:"Javascript")
resources[3].categories << Category.find_by(name:"C")
resources[3].categories << Category.find_by(name:"Python")

resources[4].categories << Category.find_by(name:"Ruby")
resources[4].categories << Category.find_by(name:"Javascript")
resources[4].categories << Category.find_by(name:"C")
resources[4].categories << Category.find_by(name:"Python")

resources[5].categories << Category.find_by(name:"Ruby")
resources[5].categories << Category.find_by(name:"Javascript")
resources[5].categories << Category.find_by(name:"C")
resources[5].categories << Category.find_by(name:"Python")

resources[6].categories << Category.find_by(name:"Ruby")
resources[6].categories << Category.find_by(name:"Testing")

resources[7].categories << Category.find_by(name:"Ruby")
resources[7].categories << Category.find_by(name:"Testing")

resources[8].categories << Category.find_by(name:"Ruby")
resources[8].categories << Category.find_by(name:"Javascript")
resources[8].categories << Category.find_by(name:"C")
resources[8].categories << Category.find_by(name:"Python")
resources[8].categories << Category.find_by(name:"Testing")

resources[9].categories << Category.find_by(name:"Testing")

resources[10].categories << Category.find_by(name:"Ruby")

resources[11].categories << Category.find_by(name:"SQL")

resources[12].categories << Category.find_by(name:"Design")

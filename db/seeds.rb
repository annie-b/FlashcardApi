# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Category.destroy_all
Resource.destroy_all
Flashcard.destroy_all

users = User.create!([
  {name: 'Kelly', username: 'RubyQueen1', email: 'kelly@fake.com', password: '123'},
  {name: 'Matt', username: 'Matt1', email: 'matt@fake.com', password: '1234'},
  {name: 'Jodi', username: 'Jodi1', email: 'jodi@fake.com', password: '12345'}
  ])

categories = Category.create!([
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

category_resources = Resource.create!([
  { title: "Ruby Warrior, Learn Ruby Programming with Bloc", url: "https://www.bloc.io/ruby-warrior#/"},
  { title: "Code Wars", url: "https://www.codewars.com/users/sign_in"},
  { title: "Exercism", url: "http://exercism.io/"},
  { title: "typing.io", url: "https://typing.io/"},
  { title: "Coderbyte", url: "http://coderbyte.com/"},
  { title: "Code School", url: "https://www.codeschool.com/"},
  { title: "Better Specs {rspec guidelines with ruby}", url: "http://betterspecs.org/"},
  { title: "Relish, RSpec", url: "https://relishapp.com/rspec"},
  { title: "Simple Programmer", url: "http://simpleprogrammer.com/"},
  { title: "Test First", url: "http://testfirst.org/"},
  { title: "Ruby on Rails Guides", url: "http://guides.rubyonrails.org/"},
  { title: "PostgreSQL Documentation", url: "http://www.postgresql.org/docs/"},
  { title: "FROONT, Open Design Blog", url: "http://blog.froont.com/positioning-in-web-design/"},
  { title: "Hacker News", url: "https://news.ycombinator.com/"},
  { title: "A List Apart", url: "http://alistapart.com/"},
  { title: "Learn SQL The Hard Way", url: "http://sql.learncodethehardway.org/book/"},
  { title: "Learn Ruby The Hard Way", url: "http://learnrubythehardway.org/"},
  { title: "Learn Regex The Hard Way", url: "http://regex.learncodethehardway.org/"},
  { title: "Learn C The Hard Way", url: "http://c.learncodethehardway.org/"},
  { title: "Learn Python The Hard Way", url: "http://learnpythonthehardway.org/"},
  { title: "Giant Robots Smashing into Other Giant Robots", url: "https://robots.thoughtbot.com/"},
  { title: "Programmers Stack Exchange", url: "http://programmers.stackexchange.com/"},
  { title: "Can I use", url: "http://caniuse.com/"},
  { title: "Deploying a subfolder to GitHub Pages", url: "https://gist.github.com/cobyism/4730490"},
  { title: "Angular Style Guide", url: "https://github.com/johnpapa/angular-styleguide"},
  { title: "Colorful CSS Gradient Background", url: "http://www.webcore-it.com/colorful-background/#"},
  { title: "Foundation Documentation", url: "http://foundation.zurb.com/docs/"},
  { title: "Git Interactive Rebase, Squash, Amend and Other Ways of Rewriting History", url: "https://robots.thoughtbot.com/git-interactive-rebase-squash-amend-rewriting-history"},
  { title: "Git Tutorial", url: "https://www.atlassian.com/git/tutorials/setting-up-a-repository"},
  { title: "Who I want to Hire", url: "http://chadfowler.com/blog/2013/04/09/who-i-want-to-hire/"},
  { title: "Eloquent Javascript", url: "http://eloquentjavascript.net/"},
  { title: "Master Space and Time with Javascript", url: "http://www.noelrappin.com/mstwjs/"},
  { title: "Developing Backbone.js Applications", url: "http://addyosmani.github.io/backbone-fundamentals/"},
  { title: "You Don't Know JS", url: "https://github.com/getify/You-Dont-Know-JS/blob/master/README.md#you-dont-know-js-book-series"},
  { title: "Learning Javascript Design Patterns", url: "http://www.addyosmani.com/resources/essentialjsdesignpatterns/book/"},
  { title: "Node: Up and Running", url: "http://chimera.labs.oreilly.com/books/1234000001808/index.html"},
  { title: "Speaking JS", url: "http://speakingjs.com/es5/"}
])

categories[1].resources << category_resources[0]

categories[1].resources << category_resources[1]
categories[2].resources << category_resources[1]
categories[10].resources << category_resources[1]
categories[11].resources << category_resources[1]

categories[1].resources << category_resources[2]
categories[2].resources << category_resources[2]
categories[10].resources << category_resources[2]
categories[11].resources << category_resources[2]

categories[1].resources << category_resources[3]
categories[2].resources << category_resources[3]
categories[10].resources << category_resources[3]
categories[11].resources << category_resources[3]

categories[1].resources << category_resources[4]
categories[2].resources << category_resources[4]
categories[10].resources << category_resources[4]
categories[11].resources << category_resources[4]

categories[1].resources << category_resources[5]
categories[2].resources << category_resources[5]
categories[10].resources << category_resources[5]
categories[11].resources << category_resources[5]

categories[9].resources << category_resources[6]
categories[1].resources << category_resources[6]

categories[9].resources << category_resources[7]
categories[1].resources << category_resources[7]

categories[9].resources << category_resources[8]
categories[10].resources << category_resources[8]
categories[11].resources << category_resources[8]
categories[1].resources << category_resources[8]
categories[2].resources << category_resources[8]

categories[9].resources << category_resources[9]

categories[1].resources << category_resources[10]

categories[7].resources << category_resources[11]

categories[0].resources << category_resources[12]

category_flashcards = Flashcard.create!([
  { term: "6 primative types in Javascript", definition: "string, number, boolean, null, undefined, symbol"},
  { term: "NaN", definition: "The initial value of NaN is Not-A-Number — the same as the value of Number; Property of the global object, writable = no, enumerable = no, configurable = no"},
  { term: "Bubble Sort", definition: "O(n^2); Pseudocode: procedure bubbleSort( A : list of sortable items )
   n = length(A)
   repeat
     swapped = false
     for i = 1 to n-1 inclusive do
       /* if this pair is out of order */
       if A[i-1] > A[i] then
         /* swap them and remember something changed */
         swap( A[i-1], A[i] )
         swapped = true
       end if
     end for
   until not swapped
end procedure"},
  { term: "Fibonacci Sequence", definition: "The Fibonacci Sequence is the series of numbers:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

The next number is found by adding up the two numbers before it."},
  { term: "acosh", definition: "Computes the inverse hyperbolic cosine of x."},
  { term: "atanh", definition: "Computes the inverse hyperbolic tangent of x."},
  { term: "cbrt", definition: "Returns the cube root of numeric"},
  { term: "cos", definition: "Computes the cosine of x (expressed in radians). Returns -1..1."},
  { term: "cosh", definition: "Computes the hyperbolic cosine of x (expressed in radians)."},
  { term: "erf", definition: "Returns the error function of x"},
  { term: "erfc", definition: "Returns the complementary error function of x."}
])

categories[0].flashcards << category_flashcards[2]
categories[1].flashcards << category_flashcards[2]

categories[2].flashcards << category_flashcards[8]
categories[3].flashcards << category_flashcards[8]

categories[4].flashcards << category_flashcards[1]
categories[5].flashcards << category_flashcards[1]
categories[6].flashcards << category_flashcards[1]
categories[7].flashcards << category_flashcards[1]
categories[8].flashcards << category_flashcards[1]
categories[9].flashcards << category_flashcards[1]
categories[10].flashcards << category_flashcards[1]

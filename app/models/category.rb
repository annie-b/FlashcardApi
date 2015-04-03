class Category < ActiveRecord::Base
  has_many :resources, dependent: :destroy
  has_many :flashcards, dependent: :destroy
end

class CreateFlashcards < ActiveRecord::Migration
  def change
    create_table :flashcards do |t|
      t.string :term
      t.string :definition
      t.references :user, index: true
      t.belongs_to :category, index: true
    end
    add_foreign_key :flashcards, :users
    add_foreign_key :flashcards, :categories
  end
end

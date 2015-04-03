class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.references :user, index: true
      t.belongs_to :category, index: true
    end
    add_foreign_key :resources, :users
    add_foreign_key :resources, :categories
  end
end

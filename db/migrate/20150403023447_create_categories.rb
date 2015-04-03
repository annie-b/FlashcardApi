class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :user, index: true
    end
    add_foreign_key :categories, :users
  end
end

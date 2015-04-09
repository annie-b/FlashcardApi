class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :token
      t.string :avatar, default: 'https://s3.amazonaws.com/studiously-bucket/monster2_128.png'
    end
  end
end

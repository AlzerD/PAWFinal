class CreateUserModel < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :unique => true
      t.string :email, :unique => true
      t.string :password_hash
      t.string :password_salt
      t.boolean :admin
      t.integer :points
      t.integer :leagues, :array => true, :length => 30     
      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end  
  
end
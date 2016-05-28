class AddIntroToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :intro, :string
    add_column :users, :purpose, :string
    add_column :users, :interests, :string
    add_column :users, :ideal_world, :string
  end
end

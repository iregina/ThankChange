class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :description
      t.references :author, references: :users
  		t.references :recipient, references: :users
  		t.boolean :approved, :default => true
      t.timestamps null: false
    end
  end
end

class Post < ActiveRecord::Base
	belongs_to :author, :class_name => "User",  primary_key: "author_id"
 	belongs_to :recipient, :class_name => "User", primary_key: "recipient_id"
end

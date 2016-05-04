class UsersController < ApplicationController
	def show
  		@user = User.find(params[:id])
  		@posts = Post.where(['author_id = ?', current_user.id])
	end
end
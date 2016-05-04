class UsersController < ApplicationController
	def show
  		# @user = User.find(params[:id])
  		# @user_id = @user.id
  		@posts = Post.where(['author_id = ?', current_user.id])
	end
end
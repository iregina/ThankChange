class PostsController < ApplicationController
	def new
	end

	def create
		@user = current_user
	  	@post = Post.new post_params
	  	@post.author_id = @user.id
	  	@post.save
      	redirect_to @post
  	end

  	def show
  		@post = Post.find(params[:id])
  	end

  	private 

  	   private

   def post_params
      params.require(:post).permit(:description)
   end

end

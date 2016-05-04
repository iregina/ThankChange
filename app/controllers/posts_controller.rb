class PostsController < ApplicationController
	def new
    @post = Post.new
	end

	def create
		@user = current_user
	  	@post = Post.new post_params
	  	@post.author_id = @user.id
	  	@post.save
      if @post.valid?
        redirect_to @post
        flash[:success] = "Thank you for your post."
      else
        render :new, :locals => {:post => @post}
      end
  	end

  	def show
  		@post = Post.find(params[:id])
  	end


  	private

   def post_params
      params.require(:post).permit(:description)
   end

end

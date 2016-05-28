class PostsController < ApplicationController
	def new
    @post = Post.new
    respond_to do |format|
      format.html #new.html.erb
      format.json { render json: @post}
    end
	end

	def create
		@user = current_user
	  	@post = Post.new post_params
	  	@post.author_id = @user.id

      respond_to do |format|
        if @post.save
          format.html { redirect_to @post, notice: "Save process completed!" }
          format.json { render json: @post, status: :created, location: @post }
        else
          format.html { 
            flash.now[:notice]="Save proccess coudn't be completed!" 
            render :new 
          }
          format.json { render json: @post.errors, status: :unprocessable_entity}
        end
      end

	  	# @post.save
    #   if @post.valid?
    #     redirect_to @post
    #     flash[:success] = "Thank you for your post."
    #   else
    #     render :new, :locals => {:post => @post}
    #   end
  	end

  	def show
  		@post = Post.find(params[:id])
  	end


  	private

   def post_params
      params.require(:post).permit(:description)
   end

end

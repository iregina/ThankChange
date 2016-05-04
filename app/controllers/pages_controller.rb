class PagesController < ApplicationController
  def home
  	@posts = Post.last(3)
  end

  def about 
  end 
end
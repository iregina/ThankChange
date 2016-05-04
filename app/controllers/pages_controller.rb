class PagesController < ApplicationController
  def home
  	@posts = Post.last(10)
  end

  def about 
  end 
end
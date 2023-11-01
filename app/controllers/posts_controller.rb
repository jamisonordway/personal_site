class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
  require 'pry'; binding.pry
  end

  def index
  end
end
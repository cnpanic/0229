class MainController < ApplicationController
skip_before_filter  :verify_authenticity_token

  def index
  end

  def board
    @show_post = Post.paginate(:page => params[:page], :per_page => 10)
  end

  def index2
  end


  def write
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.name =  params[:name]
    new_post.save
    redirect_to '/board'
  end

end

class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end
  
  def create
    @post = Post.find(params[:post_id])
    @comment=@post.comments.new(params[:comment])
    
    if @comment.save
      flash[:notice] = "your comment was saved"
      redirect_to @post
    else
      flash[:notice] = "Woops something is missing check title or comment...try again"
      render :action =>"new"
    end
  end
  

end

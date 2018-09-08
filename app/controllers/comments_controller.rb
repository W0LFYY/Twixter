class CommentsController < ApplicationController
  before_action :set_post
  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create 
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to user_bio_post_path(@post.user_bio_id, @post)
    else
      render :new
    end

  end

  def destroy
    @comment.destroy
    redirect_to user_bio_post_path(@post.user_bio_id, @post)
  end

  private

    def set_post
      @post = Post.find(params[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:body, :author)
    end

end

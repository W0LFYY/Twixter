class PostsController < ApplicationController
  before_action :set_bio
  before_action :set_post, only: [:show, :update, :edit, :destroy]
  def index
    @posts = @user_bio.posts
  end

  def show
  end

  def new
     @post = @user_bio.posts.new
     render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def update
    if @post.update(post_params)
      redirect_to user_bios_path
    else
      render :edit
    end
  end


  def create
    @post = @user_bio.posts.new(post_params)
    if @post.save
      redirect_to user_bios_path
    else
      render :new
    end
  end

  def destroy
    @post.destroy
    redirect_to user_bios_path
  end

  private 
  def set_post
    @post = Post.find(params[:id])
  end
    
    def set_bio
      @user_bio = UserBio.find(params[:user_bio_id])
    end

    def post_params
      params.require(:post).permit(:body)
    end 
end

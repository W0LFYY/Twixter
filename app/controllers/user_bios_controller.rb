class UserBiosController < ApplicationController
  before_action :set_bio, only: [:show, :update, :edit, :destroy]
  def index
    @user_bios = UserBio.all
  end

  def show
  end

  def new
    @user_bio = UserBio.new
    render partial: 'form'
  end

  def edit
  end

  def update
    if @user_bio.update(bio_params)
      redirect_to @user_bio
    else
      render :edit
    end
  end


  def create
    @user_bio = current_user.create_user_bio(bio_params)
    if @user_bio.save
      redirect_to user_bios_path
    else
      render :new
    end
  end

  def destroy
    @user_bio.destroy
    redirect_to user_bios_path
  end

  private 
  def set_user
    @user = current_user
  end
    
    def set_bio
      @user_bio = UserBio.find(params[:id])
    end

    def bio_params
      params.require(:user_bio).permit(:first_name, :last_name, :location, :phone, :email, :bio)
    end 
end

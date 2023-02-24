class UsersController < ApplicationController 
    before_action :set_user, only: %i[ show edit update destroy ]
    def new 
      @user = User.new
    end
  
    def create 
      @user = User.new(user_params)
      if @user.save 
        flash[:notice] = "You have successfully signed up!"
        redirect_to root_path
      else 
        flash[:notice] = "There was a problem signing you up. Please try again."
        render :new 
      end
    end
  
    def show  
    end
  
    private
    
    def user_params
      params.require(:user).permit(:email, :password)
    end
  
    def set_user 
      @user = User.find(params[:id])
    end
  end
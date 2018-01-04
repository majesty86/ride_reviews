class UsersController < ApplicationController
  
  def new
    
    respond_to do |f|
      f.html
      f.js
    end

    @user = User.new
  end

  def create
    
    respond_to do |f|
      f.html
      f.js
    end

    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      render :create
    else
      @errors = @user.errors.full_messages
      render :new
    end
    
  end

  def show
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
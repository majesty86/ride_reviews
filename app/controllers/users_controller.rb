class UsersController < ApplicationController
  
  def new
    respond_to(:html, :js)
    @user = User.new
  end

  def create
    respond_to(:html, :js)
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
    respond_to(:html, :js)
    @user = User.find_by(id: session[:user_id])
    @user_rides = @user.rides
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
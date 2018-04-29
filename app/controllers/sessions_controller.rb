class SessionsController < ApplicationController
  include SessionHelper

  def new
    respond_to(:html, :js)
    @user = User.new
  end

  def create
    respond_to(:html, :js)
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render :create
    else
      @errors = ["Login failed."]
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
end
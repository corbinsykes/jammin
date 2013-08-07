class SessionsController < ApplicationController

 skip_before_filter :check_authentication, only: [:new, :create]
  def new
  end

  def create
    musician = login(params[:email], params[:password], false)
    if musician
      redirect_back_or_to root_path, notice: "Successfully logged in."
    else
      flash.now.alert = "Email or password was invalid."
      render 'new'
    end
  end

  def destroy
    logout
    redirect_back_or_to root_path, notice: "Logged out. See ya!"
  end
end
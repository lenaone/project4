class UsersController < ApplicationController

  def sign_up
  end

  def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.save
    redirect_to '/users/login'
  end

  def login
  end

  def sign_in
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/movies/index'
    else
      render :login
    end 
  end

  def edit
    @user = User.find_by(id: session[:user_id])
  end

  def show
    @user = User.find_by(id: session[:user_id])
  end

  def update
    user = User.find_by(id: session[:user_id])
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.save!
    redirect_to '/users/edit_profile'
  end

  def logout
    session[:user_id] = nil
    redirect_to '/users/login'
  end

end

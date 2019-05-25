class UsersController < ApplicationController
  before_action :ensure_correct_user, {only: [:edit, :update]}

  def new
  end

  def edit

  end

  def update
    @user = User.find_by(id: @current_user.id)
    @user.name = params[:name]
    @user.email = params[:email]
    @user.country = params[:country]
    if @user.save
      redirect_to("/users/index")
      session[:name] = @user.name
    else
      render("users/#{@current_user.id}/edit")
    end
  end

  def login_form

  end

  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      session[:name] = @user.name
      redirect_to("/users/index")
    else
      render("users/login_form")
    end

  end
  def destroy_form
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user
      @user.destroy
      redirect_to("/users/index")
    else
      render("users/destroy_form")
    end
  end

  def logout
    session[:name] = nil
    redirect_to("/users/login_form")
  end
  def create
    @user = User.new(name: params[:name],email: params[:email],password: params[:password], country: params[:country])
    if @user.save
      redirect_to("/users/index")
    else
      render("users/new")
    end
  end

  def index
    @users = User.all
  end

  def ensure_correct_user
    @user = User.find_by(id: params[:id])
    if @user.id != @current_user.id
    redirect_to("/users/new")
    flash[:notice] = "NOOOOOOOOO"
    end
  end
end

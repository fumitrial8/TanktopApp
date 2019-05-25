class PostsController < ApplicationController
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy, :my_posts]}
  def index
    @posts = Post.all
  end

  def my_posts
    @posts = Post.where(user_id: @current_user.id)
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.brand = params[:brand]
    if @post.save
      redirect_to("/posts/index")
    else
      render("#{@post.id}/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    if @post
      @post.destroy
      redirect_to("/posts/index")
    end
  end

  def new
  end

  def create
    @post = Post.new(brand: params[:brand], user_id: @current_user.id)
    if @post.save
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def id
    @post = Post.find_by(id: params[:id])
  end

  def ensure_correct_user
    @post = Post.find_by(id: params[:id])
    if @current_user.id != @post.user_id
      redirect_to("/posts/index")
      flash[:notice] = "NOOOOOOOOO"
    end
  end

end

class LikesController < ApplicationController
  def like
    @post = Post.find_by(id: params[:id])
    @like = Like.new(post_id: @post.id, like_user_id: @current_user.id, post_user_id: @post.user_id)
    if @like.save
      redirect_to("/posts/index")
    end
  end

  def unlike
    @post = Post.find_by(id: params[:id])
    @like = Like.find_by(post_id: @post.id)
    if @like.destroy
      redirect_to("/posts/index")
    end
  end
end

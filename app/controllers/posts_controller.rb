class PostsController < ApplicationController
before_action :logged_in_user, only: [:create, :destroy, :new]
before_action :correct_user,   only: :destroy
  def create
  	@post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to user_path(current_user)
    else
      render 'static_pages/home'
  	end
  end

  def destroy
  	@post.destroy
    flash[:success] = "Post deleted"
    redirect_to request.referrer || root_url
  end

  def new
    @post = Post.new(params[:post])
    5.times { @post.blocks.build }
    @blno = 5;
  end

  private
  	def post_params
      params.require(:post).permit(:content,:blocks)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end
end

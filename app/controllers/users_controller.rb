class UsersController < ApplicationController
  before_action :authenticate_user! , only: :show
  before_action :authenticate_user! , only: :show
  
  def show
  	@user = User.find(params[:id])
    @posts = @user.posts.paginate(page: params[:page])
    @post = current_user.posts.build
  end

  def index
  	
  end
end
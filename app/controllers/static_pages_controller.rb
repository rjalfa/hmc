class StaticPagesController < ApplicationController
  def home
  	@posts = Post.all.limit(30)
  end

  def contact
  end

  def about
  end

  def help
  end
end

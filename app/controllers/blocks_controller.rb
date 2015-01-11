class BlocksController < ApplicationController
  def destroy
  	if @block.comments
  		@block.comments.destroy
  	@block.destroy
  end
end

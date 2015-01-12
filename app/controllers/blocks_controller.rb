class BlocksController < ApplicationController

  def destroy
  	if @block.comments
  		@block.comments.delete_all
  	@block.destroy
  end
  
end
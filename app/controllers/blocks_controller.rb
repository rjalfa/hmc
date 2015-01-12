class BlocksController < ApplicationController

  def destroy
  	if @block.comments
  		@block.comments.delete_all
  	end
  	@block.destroy
  end

end
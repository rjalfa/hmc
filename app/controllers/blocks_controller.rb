class BlocksController < ApplicationController
<<<<<<< HEAD

  def create
  	
  end

  private

  	def block_params
      params.require(:block).permit(:content)
    end   
end
=======
  def destroy
  	if @block.comments
  		@block.comments.destroy
  	@block.destroy
  end
end
>>>>>>> post-blocks

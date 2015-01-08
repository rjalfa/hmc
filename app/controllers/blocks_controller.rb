class BlocksController < ApplicationController

  def create
  	
  end

  private

  	def block_params
      params.require(:block).permit(:content)
    end   
end
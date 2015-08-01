class ConcertsController < ApplicationController
  def index 
    @concert = Concert.all 
  end
  def new 
    @concert = Concert.new
  end
  def create
	@concert = Concert.new concert_params

		if @concert.save
			flash[:notice] = "Concert created sucesfully"
			redirect_to concerts_path
		else
			flash.now[:alert] = "Problem with the entry"
			@errors = @concert.errors.full_messages
			render 'new'
		end
	end
  def show 
  	@concert = Concert.find params[:id]
  end 
  private
  def concert_params
	params.require(:concert).permit(:band, :venue, :city, :date, :price, :description)
  end
end

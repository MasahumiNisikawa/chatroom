class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @rooms = Room.find(params[:rooms])
  end

  def new
    @rooms = Room.new
  end
  
  

  def create
    room_params = params.require(:room).permit(:name)
    @rooms = Room.new(params[:room])
    if @rooms.save
      redirect_to @rooms
    else
      render 'new'
    end
  end
  
end

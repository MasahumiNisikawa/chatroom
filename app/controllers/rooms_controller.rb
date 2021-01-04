class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]

  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @rooms = Room.new
  end
  
  def create
    @rooms = Room.new(params[:rooms])
    if @rooms.save
      redirect_to @rooms
    else
      render 'new'
    end
  end
  
  def update
    if @room.update(room_params)
      redirect_to @room
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to rooms_url
  end


  private

    def set_room
      @room = Room.find(params[:id])
    end

    def rooms_params
      params.require(:room).permit(:name, :body)
    end
end

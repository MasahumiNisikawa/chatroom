class MessagesController < ApplicationController
  before_action :set_room

  def create
     @message = @room.messages.build(message_params)
     @message.save      
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def set_message
      @messages = Message.find(params[:id])
    end

    def messages_params
      params.require(:message).permit(:content)
    end
end

class MessagesController < ApplicationController
  before_action :set_message, only: %i[:destroy]
  def index
    @meassges = Message.all
  end
  
  def destroy
    @message.destroy!
  end

  def create
    Message.create!(message_params)

  private

    def set_message
      @message = Message.find(params[:id])
    end

    def messages_params
      params.require(:message).permit(:content)
    end
end

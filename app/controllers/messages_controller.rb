class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :update, :destroy]


  def destroy
  end

  def create
  end

  private

    def set_room
      @messages = Message.find(params[:id])
    end

    def messages_params
      params.require(:message).permit(:content, :body)
    end
end

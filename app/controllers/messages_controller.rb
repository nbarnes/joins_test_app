
class MessagesController < ApplicationController
  before_action :set_message, only: [:destroy]

  def index
    @messages = Message.all
  end

  def create
    # new_message = Message.create()
    # new_message.body = params[:body]
    # new_message.to_user = params[:to_user]
    # new_message.from_user = params[:from_user]
    # binding.pry
    # redirect_to messages_path
  end

  def destroy
  end

  private
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:from_user, :to_user, :body)
    end

end

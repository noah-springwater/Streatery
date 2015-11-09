class MessagesController < ApplicationController
  def new
  end

  def create
    @message = Message.new(message_params)
    @message.foodtruck_id = params[:foodtruck_id]

    @message.save

    redirect_to foodtruck_path(@message.foodtruck)
  end

  def message_params
    params.require(:message).permit(:body)
  end

  def show
  end

  def edit
    @message.id
  end
  
  def index
  end
end

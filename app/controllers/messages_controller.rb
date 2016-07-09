class MessagesController < ApplicationController
  def index
    @messages=Message.last(30).reverse
    render layout: "admin_layout"
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      @message.deliver
      redirect_to '/ok'
    else
      render 'new'
    end
  end

  # def show
  #   @message = Message.find(params[:id])
  # end

  def ok
    @message = Message.last
  end

  private

  def message_params
    params.require(:message).permit(:mtype, :name, :email, :phone, :body)
  end  	
end

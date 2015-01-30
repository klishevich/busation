class MessagesController < ApplicationController
  def index
    @messages=Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = t(:ok)
      redirect_to @message
    else
      render 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  def edit
  	@message=Message.find(params[:id])
  end

  # def update
  #   @message = Demand.find(params[:id])
  #   if @demand.update_attributes(demand_params)
  #     flash[:success] = t(:ok)
  #     redirect_to @demand
  #   else
  #     render 'edit'
  #   end
  # end	

  private

  def message_params
    params.require(:message).permit(:type, :name, :email, :phone, :body)
  end  	
end

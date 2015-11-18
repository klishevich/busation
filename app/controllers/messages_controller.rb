class MessagesController < ApplicationController
  def index
    @messages=Message.last(30).reverse
    render layout: "admin_layout"
  end

  def new
    @message = Message.new
  end

  def create
    # mp = message_params
    # mp[:mtype] = params[:type]
    @message = Message.new(message_params)
    if @message.save
      @message.deliver
      # flash[:success] = t(:ok)
      redirect_to @message
    else
      render 'new'
    end
  end

  def show
    @message = Message.find(params[:id])
  end

  # def edit
  # 	@message=Message.find(params[:id])
  # end

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
    params.require(:message).permit(:mtype, :name, :email, :phone, :body)
  end  	
end

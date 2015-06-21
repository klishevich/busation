class StaticPagesController < ApplicationController
  def home
  	@message = Message.new
  end

  def bpm
  	@message = Message.new
  end
end

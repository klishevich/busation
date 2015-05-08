class StaticPagesController < ApplicationController
  def home
  	@message = Message.new
  end

  def bpm
  end
end

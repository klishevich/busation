class SubscribeController < ApplicationController
  def new
  end

  def create
  	# RestClient.post("https://api:key-" \
   #                "@api.mailgun.net/v3/lists/LIST@mg.busation.com/members",
   #                :subscribed => true,
   #                :address => 'bar@example.com',
   #                :name => 'Bob Bar',
   #                :description => 'Developer',
   #                :vars => '{"age": 26}')
	mykey = Rails.application.secrets.mailgun_api_key
	myurl = "https://api:" + mykey + "@api.mailgun.net/v3/lists/busation@mg.busation.com/members"
	RestClient::Request.execute(
	  :url => myurl,
	  :method => :post,
	  :payload => {
	  	:subscribed => true,
        :address => params[:email],          
        :name => params[:name],
        :description => 'From site',
        :vars => '{"age": 26}'
	  },
	  :headers => {
	  	:"h:X-My-Header" => "www/mailgun-email-send"
	  	},
	  :verify_ssl => false
	)

  	redirect_to "/subscribed"
  end

  def finished
  end 

end

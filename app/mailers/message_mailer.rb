class MessageMailer < ActionMailer::Base
  default from: "mans1st@yandex.ru"

  def new_notification(message)
    @message = message
    mail to: "busation@gmail.com", subject: t(:new_message)
  end

  # def test_email1
  # 	Rails.logger.debug 'test_email'
  # 	mail(:to => 'm.klishevich@yandex.ru', :subject => "testing rails", body: "lasfkasf")
  # end

end

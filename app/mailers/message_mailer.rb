class MessageMailer < ActionMailer::Base
  default from: "no-reply@busation.com"

  def new_notification(message)
    @message = message
    mail to: "m.klishevich@yandex.ru", subject: t(:new_message)
  end

  # def test_email1
  # 	Rails.logger.debug 'test_email'
  # 	mail(:to => 'm.klishevich@yandex.ru', :subject => "testing rails", body: "lasfkasf")
  # end

end

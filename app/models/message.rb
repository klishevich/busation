#encoding: utf-8
class Message < ActiveRecord::Base
  # validates :mtype, presence: true
  validates :name, presence: true
  validates :body, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}

  validate :check_spam

  def deliver
    MessageMailer.new_notification(self).deliver
  end

  def check_spam
    if body.include? "href" or body.include? "http://" or body.include? "https://" or body.include? I18n.t('metro')
      errors.add(:body, :spam)
    end
  end

end

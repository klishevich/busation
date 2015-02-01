class Message < ActiveRecord::Base
  # validates :mtype, presence: true
  validates :name, presence: true
  validates :body, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
end

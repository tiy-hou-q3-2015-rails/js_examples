class Email < ActiveRecord::Base
  validates :subject, presence: true
  validates :body, presence: true
  validates :recipient, presence: true
end

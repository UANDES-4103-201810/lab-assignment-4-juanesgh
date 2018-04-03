class UserTicket < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  validates :user, :ticket, :paid, presence: true
  
  before_create do
    self.time = Time.now.getutc
  end
end

class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validates :name, :description, :start_date, :place, presence: true
  
  before_create do
    a = Event.find_by start_date: Time.now.getutc
    self.start_date = Time.now.getutc if not a.nil?
  end
end

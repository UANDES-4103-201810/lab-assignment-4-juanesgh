class Place < ApplicationRecord
	has_many :events
	validates :name, :address, :capacity, presence: true
    validates :name, length: {in: 1..20}
	before_create do
	  self.capacity = 200 if not self.capacity > 0
	end
end

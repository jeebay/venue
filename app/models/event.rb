class Event < ActiveRecord::Base
	belongs_to :band
	belongs_to :concert_hall
	
	after_initialize :default_values
	
	def default_values
		self.alcohol_served = true
	end
end

class ConcertHall < ActiveRecord::Base
	has_many :events
	has_many :bands, through: :events
	
	after_initialize :default_values
	
	def default_values
		self.family_friendly = false
	end
end

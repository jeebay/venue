class Band < ActiveRecord::Base
	has_many :events
	
	after_initialize :default_values
	
	def default_values
		self.explicit_lyrics = false
	end
end

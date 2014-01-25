class Restaurant < ActiveRecord::Base

	has_many :reviews

	def average_stars
		self.reviews.average(:stars)
	end
	
end

class Review < ActiveRecord::Base

	belongs_to :restaurant
	validates :stars, numericality: { :greater_than_or_equal_to => 0 }
end

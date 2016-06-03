class Review < ActiveRecord::Base

	# A review must belong to a movie
	belongs_to :movie

	# A review belongs to a user
	belongs_to :user
end

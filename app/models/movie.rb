class Movie < ActiveRecord::Base

	# Enable searching
	searchkick

	has_many :reviews
	belongs_to :user


	has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ # Make sure only images are given


end

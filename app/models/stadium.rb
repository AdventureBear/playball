class Stadium < ActiveRecord::Base
	has_many :reviews, dependent: :destroy

	validates :name, :city, :state, presence: true

	validates :image_file_name, allow_blank: true, format: {
  	with:    /\w+.(gif|jpg|png)\z/i,
  	message: "must reference a GIF, JPG, or PNG image"
	}

	validates :website, allow_blank: true, format: {
    with:  /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/,
    message:  "must be a valid URL starting with http"
	}

	def self.newest
		where("opening > ?", Time.now - 5.years).order("opening asc")
	end


	def average_stars
		reviews.average(:stars)
	end
end

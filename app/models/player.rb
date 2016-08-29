class Player < ActiveRecord::Base
	validates :name, presence: true
	# has_many :noob_points
	# has_many :assasin_points

	# belongs_to :user
end

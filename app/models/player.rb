class Player < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :user
  # has_many :noob_points
  # has_many :assasin_points

end

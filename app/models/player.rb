class Player < ActiveRecord::Base
  # include Counter::Cache
  belongs_to :user
  has_many :noobs

  validates :name, presence: true

end

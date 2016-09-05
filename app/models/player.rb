class Player < ActiveRecord::Base
  # include Counter::Cache
  belongs_to :user
  has_many :noobs
  has_many :assassins

  validates :name, presence: true

end

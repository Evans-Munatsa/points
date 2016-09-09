class Player < ActiveRecord::Base
  # include Counter::Cache
  belongs_to :user
  
  validates :name,  :presence => true, :uniqueness => true

end

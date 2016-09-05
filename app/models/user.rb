class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include Counter::Cache
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :players, :foreign_key => :user_id

  # counter_cache_on column: :players, # users.posts_count
  #   relation: :user,
  #   relation_class_name: "User",
  #   method: :calculate_players_count # This is a method on the user.

end

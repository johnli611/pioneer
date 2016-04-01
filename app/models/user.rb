class User < ActiveRecord::Base
  has_many :photos
  has_many :albums
  validates :display_name, presence: true
  validates :email, presence: true
end

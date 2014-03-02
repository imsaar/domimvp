class Property < ActiveRecord::Base
  belongs_to :listing
  has_many :rooms
  has_many :images
end

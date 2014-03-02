class Subletter < ActiveRecord::Base
  belongs_to :user
  has_one :room
end

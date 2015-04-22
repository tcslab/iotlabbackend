class Reservation < ActiveRecord::Base
  belongs_to :user
  has_many :resource_reservations
  has_many :resources, :through => :resource_reservations
end

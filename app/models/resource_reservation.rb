class ResourceReservation < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :resource
end

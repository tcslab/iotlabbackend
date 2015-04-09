class Node < ActiveRecord::Base
  has_one :resource
  # validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :urn, :presence => true
end

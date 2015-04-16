class Node < ActiveRecord::Base
  has_one :resource
  validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :urn, :presence => true

  def self.get_resources_by_location(latitude,longitude)
    la = BigDecimal(latitude)
    lo = BigDecimal(longitude)
    Node.where(latitude: la,longitude: lo)
  end

  def self.get_nodes_by_provider(provider_id)
    Node.where(provider_id: provider_id)
  end
end

class Resource < ActiveRecord::Base
  belongs_to :function_sets
  belongs_to :nodes
  belongs_to :resource_types
  validates :name, :presence => true
  validates :resource_type_id, :presence => true
  validates :function_set_id, :presence => true
  validates :node_id , :presence => true

  def self.get_resources_by_location(latitude,longitude)
    la = BigDecimal(latitude)
    lo = BigDecimal(longitude)
    Node.where(latitude: la,longitude: lo)
  end

  # #TODO
  # def self.get_resources_by_provider
  #   nil
  # end

  # #TODO
  # def self.get_resources_by_type
  #   nil
  # end
end

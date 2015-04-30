class Resource < ActiveRecord::Base
  belongs_to :function_sets
  belongs_to :nodes
  belongs_to :resource_types
  has_many :resource_reservations
  has_many :reservations, :through => :resource_reservations
  validates :name, :presence => true
  validates :resource_type_id, :presence => true
  validates :function_set_id, :presence => true
  validates :node_id , :presence => true

  def self.resources_by_type(resource_type_id)
    Resource.where(resource_type_id: resource_type_id)
  end

  def self.resources_by_path(path)
    Resource.where(path: path)
  end

  def self.resources_by_name(name)
    Resource.where(name: name)
  end
end

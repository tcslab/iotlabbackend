class ResourceType < ActiveRecord::Base
  belongs_to :data_types
  has_one :resource
  validates :name, :presence => true
end

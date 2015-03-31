class ResourceType < ActiveRecord::Base
  belongs_to :interface_id
  validates :name, :presence => true
end

class ResourceType < ActiveRecord::Base
  belongs_to :data_types
  validates :name, :presence => true
end

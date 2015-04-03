class Resource < ActiveRecord::Base
  belongs_to :function_sets
  belongs_to :nodes
  belongs_to :resource_types
end

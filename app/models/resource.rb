class Resource < ActiveRecord::Base
  belongs_to :function_set_id
  belongs_to :node_id
end

class ExperimentAction < ActiveRecord::Base
  belongs_to :resource_reservation
  belongs_to :experiment
end

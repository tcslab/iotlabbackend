class Resource < ActiveRecord::Base
  belongs_to :function_sets
  belongs_to :nodes
  belongs_to :resource_types

  # def self.get_resources_by_location
  #   # where("startdate >= ?", Time.zone.now.beginning_of_day).order('startdate ASC').limit(4)
  # end

  # #TODO
  # def self.get_resources_by_provider
  #   nil
  # end

  # #TODO
  # def self.get_resources_by_type
  #   nil
  # end
end

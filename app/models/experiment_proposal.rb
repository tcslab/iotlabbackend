class ExperimentProposal < ActiveRecord::Base
  belongs_to :experiment_proposal_category
  belongs_to :reward_category
  belongs_to :user
end

class CreateExperimentProposals < ActiveRecord::Migration
  def change
    create_table :experiment_proposals do |t|
      t.references :experiment_proposal_category, index: true
      t.references :reward_category, index: true
      t.references :user, index: true
      t.text :proposal_text

      t.timestamps
    end
  end
end

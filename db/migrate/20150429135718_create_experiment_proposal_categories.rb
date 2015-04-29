class CreateExperimentProposalCategories < ActiveRecord::Migration
  def change
    create_table :experiment_proposal_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end

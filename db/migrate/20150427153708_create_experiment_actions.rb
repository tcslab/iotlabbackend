class CreateExperimentActions < ActiveRecord::Migration
  def change
    create_table :experiment_actions do |t|
      t.references :resource_reservation, index: true
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :action_period
      t.references :experiment, index: true

      t.timestamps
    end
  end
end

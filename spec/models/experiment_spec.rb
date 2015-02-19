# spec/models/experiment_spec.rb
require 'rails_helper'

RSpec.describe Experiment, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    FactoryGirl.create(:experiment).should be_valid
  end
  it "is invalid without a is invalid without a title"
  it "is invalid without a description "
  it "is invalid without a start_datetime "
  it "is invalid without a end_datetime "
  it "is invalid without a participation "
  it "is invalid without a voters"
  it "is invalid without a ranking "
  it "is invalid without a interaction"
  it "is invalid without a status"
  it "is invalid without a location "
  it "is invalid without a radius"
  it "is invalid without a minimum_age"
  it "is invalid without a maximum_age"
  it "is invalid without a gender"
  it "is invalid without a employment_sector"
  it "is invalid without a employment_status"
  it "is invalid without a camera"
  it "is invalid without a accelerometer"
end

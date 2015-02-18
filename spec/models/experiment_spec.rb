require 'rails_helper'

RSpec.describe Experiment, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory" do
    Factory.create(:experiment).should be_valid
  end
end

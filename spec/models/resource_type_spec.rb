require 'rails_helper'

RSpec.describe ResourceType, type: :model do
  it "is invalid without a name" do
    expect(FactoryGirl.build(:resource_type, name:nil)).not_to be_nil
  end
end

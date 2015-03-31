require 'rails_helper'

RSpec.describe ResourceType, type: :model do
  it "is invalid without a name" do
    expect(FactoryGirl.build(:discovery_source, name:nil)).not_to be_nil
  end
  it "is invalid without a url" do
    expect(FactoryGirl.build(:discovery_source, url:nil)).not_to be_nil
  end
end

require 'rails_helper'

RSpec.describe Resource, type: :model do
  context 'validations' do
    before { FactoryGirl.build(:resource) }

    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :function_set_id }
    it { is_expected.to validate_presence_of :node_id }
    it { is_expected.to validate_presence_of :resource_type_id }
  end

  it "returns resources for a given location"
    # expect(FactoryGirl.build(:discovery_source, name:nil)).not_to be_nil
end

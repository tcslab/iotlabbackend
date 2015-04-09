require 'rails_helper'

RSpec.describe Node, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # it { is_expected.to validate_presence_of(:name) }
  # it { is_expected.to validate_presence_of(:latitude) }
  # it { is_expected.to validate_presence_of(:longitude) }
  context 'validations' do
    before { FactoryGirl.build(:node) }

    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :latitude }
    it { is_expected.to validate_presence_of :longitude }
    it { is_expected.to validate_presence_of :urn }

  end
end

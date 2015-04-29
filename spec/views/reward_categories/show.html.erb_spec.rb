require 'rails_helper'

RSpec.describe "reward_categories/show", type: :view do
  before(:each) do
    @reward_category = assign(:reward_category, RewardCategory.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

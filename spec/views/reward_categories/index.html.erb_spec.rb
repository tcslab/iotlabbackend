require 'rails_helper'

RSpec.describe "reward_categories/index", type: :view do
  before(:each) do
    assign(:reward_categories, [
      RewardCategory.create!(
        :name => "Name"
      ),
      RewardCategory.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of reward_categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

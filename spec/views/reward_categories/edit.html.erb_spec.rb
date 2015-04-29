require 'rails_helper'

RSpec.describe "reward_categories/edit", type: :view do
  before(:each) do
    @reward_category = assign(:reward_category, RewardCategory.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit reward_category form" do
    render

    assert_select "form[action=?][method=?]", reward_category_path(@reward_category), "post" do

      assert_select "input#reward_category_name[name=?]", "reward_category[name]"
    end
  end
end

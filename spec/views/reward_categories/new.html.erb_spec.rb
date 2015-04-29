require 'rails_helper'

RSpec.describe "reward_categories/new", type: :view do
  before(:each) do
    assign(:reward_category, RewardCategory.new(
      :name => "MyString"
    ))
  end

  it "renders new reward_category form" do
    render

    assert_select "form[action=?][method=?]", reward_categories_path, "post" do

      assert_select "input#reward_category_name[name=?]", "reward_category[name]"
    end
  end
end

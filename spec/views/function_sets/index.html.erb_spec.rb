require 'rails_helper'

RSpec.describe "function_sets/index", type: :view do
  before(:each) do
    assign(:function_sets, [
      FunctionSet.create!(
        :name => "Name",
        :restype => "Restype",
        :description => "MyText",
        :root_path => "Root Path"
      ),
      FunctionSet.create!(
        :name => "Name",
        :restype => "Restype",
        :description => "MyText",
        :root_path => "Root Path"
      )
    ])
  end

  it "renders a list of function_sets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Restype".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Root Path".to_s, :count => 2
  end
end

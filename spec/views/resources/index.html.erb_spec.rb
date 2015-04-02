require 'rails_helper'

RSpec.describe "resources/index", type: :view do
  before(:each) do
    assign(:resources, [
      Resource.create!(
        :name => "blabla",
        :ipso_index => 1,
        :function_set_id => nil,
        :node_id => nil,
        :resource_type_id => ""
      ),
      Resource.create!(
        :ipso_index => 1,
        :function_set_id => nil,
        :node_id => nil,
        :resource_type_id => ""
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

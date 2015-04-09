require 'rails_helper'

RSpec.describe "nodes/edit", type: :view do
  before(:each) do
    @node = assign(:node, Node.create!(
      :name => "MyString",
      :latitude => 46.176388,
      :longitude => 6.139959,
      :provider_id => 1,
      :phone_flag => false,
      :urn => "MyString"
    ))
  end

  it "renders the edit node form" do
    render

    assert_select "form[action=?][method=?]", node_path(@node), "post" do

      assert_select "input#node_name[name=?]", "node[name]"

      assert_select "input#node_latitude[name=?]", "node[latitude]"

      assert_select "input#node_longitude[name=?]", "node[longitude]"

      assert_select "input#node_provider_id[name=?]", "node[provider_id]"

      assert_select "input#node_phone_flag[name=?]", "node[phone_flag]"

      assert_select "input#node_urn[name=?]", "node[urn]"
    end
  end
end

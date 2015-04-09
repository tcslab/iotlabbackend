require 'rails_helper'

RSpec.describe "nodes/new", type: :view do
  before(:each) do
    assign(:node, Node.new(
      :name => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :provider_id => "MyString",
      :phone_flag => false,
      :urn => "MyString"
    ))
  end

  it "renders new node form" do
    render

    assert_select "form[action=?][method=?]", nodes_path, "post" do

      assert_select "input#node_name[name=?]", "node[name]"

      assert_select "input#node_latitude[name=?]", "node[latitude]"

      assert_select "input#node_longitude[name=?]", "node[longitude]"

      assert_select "input#node_provider_id[name=?]", "node[provider_id]"

      assert_select "input#node_phone_flag[name=?]", "node[phone_flag]"

      assert_select "input#node_urn[name=?]", "node[urn]"
    end
  end
end

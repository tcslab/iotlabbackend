require 'rails_helper'

RSpec.describe "nodes/edit", type: :view do
  before(:each) do
    @node = assign(:node, Node.create!(
      :name => "MyString",
      :location => "MyString",
      :phone_flag => false,
      :urn => "MyString"
    ))
  end

  it "renders the edit node form" do
    render

    assert_select "form[action=?][method=?]", node_path(@node), "post" do

      assert_select "input#node_name[name=?]", "node[name]"

      assert_select "input#node_location[name=?]", "node[location]"

      assert_select "input#node_phone_flag[name=?]", "node[phone_flag]"

      assert_select "input#node_urn[name=?]", "node[urn]"
    end
  end
end

require 'rails_helper'

RSpec.describe "resources/new", type: :view do
  before(:each) do
    assign(:resource, Resource.new(
      :ipso_index => 1,
      :function_set_id => nil,
      :node_id => nil,
      :resource_type_id => ""
    ))
  end

  it "renders new resource form" do
    render

    assert_select "form[action=?][method=?]", resources_path, "post" do

      assert_select "input#resource_ipso_index[name=?]", "resource[ipso_index]"

      assert_select "input#resource_function_set_id_id[name=?]", "resource[function_set_id_id]"

      assert_select "input#resource_node_id_id[name=?]", "resource[node_id_id]"

      assert_select "input#resource_resource_type_id[name=?]", "resource[resource_type_id]"
    end
  end
end

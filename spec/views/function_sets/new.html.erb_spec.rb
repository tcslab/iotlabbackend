require 'rails_helper'

RSpec.describe "function_sets/new", type: :view do
  before(:each) do
    assign(:function_set, FunctionSet.new(
      :name => "MyString",
      :restype => "MyString",
      :description => "MyText",
      :root_path => "MyString"
    ))
  end

  it "renders new function_set form" do
    render

    assert_select "form[action=?][method=?]", function_sets_path, "post" do

      assert_select "input#function_set_name[name=?]", "function_set[name]"

      assert_select "input#function_set_restype[name=?]", "function_set[restype]"

      assert_select "textarea#function_set_description[name=?]", "function_set[description]"

      assert_select "input#function_set_root_path[name=?]", "function_set[root_path]"
    end
  end
end

require 'rails_helper'

RSpec.describe "function_sets/edit", type: :view do
  before(:each) do
    @function_set = assign(:function_set, FunctionSet.create!(
      :name => "MyString",
      :restype => "MyString",
      :description => "MyText",
      :root_path => "MyString"
    ))
  end

  it "renders the edit function_set form" do
    render

    assert_select "form[action=?][method=?]", function_set_path(@function_set), "post" do

      assert_select "input#function_set_name[name=?]", "function_set[name]"

      assert_select "input#function_set_restype[name=?]", "function_set[restype]"

      assert_select "textarea#function_set_description[name=?]", "function_set[description]"

      assert_select "input#function_set_root_path[name=?]", "function_set[root_path]"
    end
  end
end

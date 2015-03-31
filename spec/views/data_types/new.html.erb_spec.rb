require 'rails_helper'

RSpec.describe "data_types/new", type: :view do
  before(:each) do
    assign(:data_type, DataType.new(
      :name => "MyString",
      :plainformat => "MyString",
      :senml => "MyString"
    ))
  end

  it "renders new data_type form" do
    render

    assert_select "form[action=?][method=?]", data_types_path, "post" do

      assert_select "input#data_type_name[name=?]", "data_type[name]"

      assert_select "input#data_type_plainformat[name=?]", "data_type[plainformat]"

      assert_select "input#data_type_senml[name=?]", "data_type[senml]"
    end
  end
end

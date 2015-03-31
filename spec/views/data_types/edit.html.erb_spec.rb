require 'rails_helper'

RSpec.describe "data_types/edit", type: :view do
  before(:each) do
    @data_type = assign(:data_type, DataType.create!(
      :name => "MyString",
      :plainformat => "MyString",
      :senml => "MyString"
    ))
  end

  it "renders the edit data_type form" do
    render

    assert_select "form[action=?][method=?]", data_type_path(@data_type), "post" do

      assert_select "input#data_type_name[name=?]", "data_type[name]"

      assert_select "input#data_type_plainformat[name=?]", "data_type[plainformat]"

      assert_select "input#data_type_senml[name=?]", "data_type[senml]"
    end
  end
end

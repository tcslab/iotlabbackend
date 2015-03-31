require 'rails_helper'

RSpec.describe "date_types/new", type: :view do
  before(:each) do
    assign(:date_type, DateType.new(
      :name => "MyString",
      :plainformat => "MyString",
      :senml => "MyString"
    ))
  end

  it "renders new date_type form" do
    render

    assert_select "form[action=?][method=?]", date_types_path, "post" do

      assert_select "input#date_type_name[name=?]", "date_type[name]"

      assert_select "input#date_type_plainformat[name=?]", "date_type[plainformat]"

      assert_select "input#date_type_senml[name=?]", "date_type[senml]"
    end
  end
end

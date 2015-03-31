require 'rails_helper'

RSpec.describe "date_types/edit", type: :view do
  before(:each) do
    @date_type = assign(:date_type, DateType.create!(
      :name => "MyString",
      :plainformat => "MyString",
      :senml => "MyString"
    ))
  end

  it "renders the edit date_type form" do
    render

    assert_select "form[action=?][method=?]", date_type_path(@date_type), "post" do

      assert_select "input#date_type_name[name=?]", "date_type[name]"

      assert_select "input#date_type_plainformat[name=?]", "date_type[plainformat]"

      assert_select "input#date_type_senml[name=?]", "date_type[senml]"
    end
  end
end

require 'rails_helper'

RSpec.describe "date_types/index", type: :view do
  before(:each) do
    assign(:date_types, [
      DateType.create!(
        :name => "Name",
        :plainformat => "Plainformat",
        :senml => "Senml"
      ),
      DateType.create!(
        :name => "Name",
        :plainformat => "Plainformat",
        :senml => "Senml"
      )
    ])
  end

  it "renders a list of date_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Plainformat".to_s, :count => 2
    assert_select "tr>td", :text => "Senml".to_s, :count => 2
  end
end

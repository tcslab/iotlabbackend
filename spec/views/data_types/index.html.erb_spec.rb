require 'rails_helper'

RSpec.describe "data_types/index", type: :view do
  before(:each) do
    assign(:data_types, [
      DataType.create!(
        :name => "Name",
        :plainformat => "Plainformat",
        :senml => "Senml"
      ),
      DataType.create!(
        :name => "Name",
        :plainformat => "Plainformat",
        :senml => "Senml"
      )
    ])
  end

  it "renders a list of data_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Plainformat".to_s, :count => 2
    assert_select "tr>td", :text => "Senml".to_s, :count => 2
  end
end

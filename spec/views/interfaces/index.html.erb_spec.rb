require 'rails_helper'

RSpec.describe "interfaces/index", type: :view do
  before(:each) do
    assign(:interfaces, [
      Interface.create!(
        :name => "Name",
        :abreviation => "Abreviation"
      ),
      Interface.create!(
        :name => "Name",
        :abreviation => "Abreviation"
      )
    ])
  end

  it "renders a list of interfaces" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abreviation".to_s, :count => 2
  end
end

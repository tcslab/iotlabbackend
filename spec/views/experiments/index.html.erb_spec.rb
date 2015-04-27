require 'rails_helper'

RSpec.describe "experiments/index", type: :view do
  before(:each) do
    assign(:experiments, [
      Experiment.create!(
        :title => "Title",
        :description => "MyText",
        :participation => "Participation",
        :voters => 2,
        :ranking => "9.99",
        :interaction => "Interaction",
        :status => "Status",
      ),
      Experiment.create!(
        :title => "Title",
        :description => "MyText",
        :participation => "Participation",
        :voters => 2,
        :ranking => "9.99",
        :interaction => "Interaction",
        :status => "Status",
      )
    ])
  end

  it "renders a list of experiments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Participation".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Interaction".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end

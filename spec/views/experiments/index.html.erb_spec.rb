require 'rails_helper'

RSpec.describe "experiments/index", type: :view do
  before(:each) do
    assign(:experiments, [
      Experiment.create!(
        :title => "Title",
        :description => "MyText",
        :participation => "Participation",
        :devices => 1,
        :voters => 2,
        :ranking => "9.99",
        :interaction => "Interaction",
        :status => "Status",
        :latitude => "",
        :longitude => "",
        :location => "Location",
        :radius => 3,
        :minimum_age => "Minimum Age",
        :maximum_age => "Maximum Age",
        :gender => "Gender",
        :employment_sector => "Employment Sector",
        :employment_status => "Employment Status",
        :camera => "Camera",
        :accelerometer => "Accelerometer"
      ),
      Experiment.create!(
        :title => "Title",
        :description => "MyText",
        :participation => "Participation",
        :devices => 1,
        :voters => 2,
        :ranking => "9.99",
        :interaction => "Interaction",
        :status => "Status",
        :latitude => "",
        :longitude => "",
        :location => "Location",
        :radius => 3,
        :minimum_age => "Minimum Age",
        :maximum_age => "Maximum Age",
        :gender => "Gender",
        :employment_sector => "Employment Sector",
        :employment_status => "Employment Status",
        :camera => "Camera",
        :accelerometer => "Accelerometer"
      )
    ])
  end

  it "renders a list of experiments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Participation".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Interaction".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Minimum Age".to_s, :count => 2
    assert_select "tr>td", :text => "Maximum Age".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Employment Sector".to_s, :count => 2
    assert_select "tr>td", :text => "Employment Status".to_s, :count => 2
    assert_select "tr>td", :text => "Camera".to_s, :count => 2
    assert_select "tr>td", :text => "Accelerometer".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "experiments/index", type: :view do
  before(:each) do
    assign(:experiments, [
      Experiment.create!(
        :title => "Title",
        :description => "Description",
        :start_datetime => "Start Datetime",
        :end_datetime => "End Datetime",
        :participation => "Participation",
        :voters => "Voters",
        :ranking => "Ranking",
        :interaction => "Interaction",
        :status => "Status",
        :location => "Location",
        :radius => "Radius",
        :minimum_age => "Minimum Age",
        :maximum_age => "Maximum Age",
        :gender => "Gender",
        :employment_sector => "Employment Sector",
        :employment_status => "Employment Status",
        :camera => "Camera",
        :location => "Location",
        :accelerometer => "Accelerometer"
      ),
      Experiment.create!(
        :title => "Title",
        :description => "Description",
        :start_datetime => "Start Datetime",
        :end_datetime => "End Datetime",
        :participation => "Participation",
        :voters => "Voters",
        :ranking => "Ranking",
        :interaction => "Interaction",
        :status => "Status",
        :location => "Location",
        :radius => "Radius",
        :minimum_age => "Minimum Age",
        :maximum_age => "Maximum Age",
        :gender => "Gender",
        :employment_sector => "Employment Sector",
        :employment_status => "Employment Status",
        :camera => "Camera",
        :location => "Location",
        :accelerometer => "Accelerometer"
      )
    ])
  end

  it "renders a list of experiments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Start Datetime".to_s, :count => 2
    assert_select "tr>td", :text => "End Datetime".to_s, :count => 2
    assert_select "tr>td", :text => "Participation".to_s, :count => 2
    assert_select "tr>td", :text => "Voters".to_s, :count => 2
    assert_select "tr>td", :text => "Ranking".to_s, :count => 2
    assert_select "tr>td", :text => "Interaction".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Radius".to_s, :count => 2
    assert_select "tr>td", :text => "Minimum Age".to_s, :count => 2
    assert_select "tr>td", :text => "Maximum Age".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Employment Sector".to_s, :count => 2
    assert_select "tr>td", :text => "Employment Status".to_s, :count => 2
    assert_select "tr>td", :text => "Camera".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Accelerometer".to_s, :count => 2
  end
end

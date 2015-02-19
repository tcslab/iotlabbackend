require 'rails_helper'

RSpec.describe "experiments/show", type: :view do
  before(:each) do
    @experiment = assign(:experiment, Experiment.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Start Datetime/)
    expect(rendered).to match(/End Datetime/)
    expect(rendered).to match(/Participation/)
    expect(rendered).to match(/Voters/)
    expect(rendered).to match(/Ranking/)
    expect(rendered).to match(/Interaction/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Radius/)
    expect(rendered).to match(/Minimum Age/)
    expect(rendered).to match(/Maximum Age/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Employment Sector/)
    expect(rendered).to match(/Employment Status/)
    expect(rendered).to match(/Camera/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Accelerometer/)
  end
end

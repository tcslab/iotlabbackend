require 'rails_helper'

RSpec.describe "experiments/show", type: :view do
  before(:each) do
    @experiment = assign(:experiment, Experiment.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Participation/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Interaction/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Minimum Age/)
    expect(rendered).to match(/Maximum Age/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Employment Sector/)
    expect(rendered).to match(/Employment Status/)
    expect(rendered).to match(/Camera/)
    expect(rendered).to match(/Accelerometer/)
  end
end

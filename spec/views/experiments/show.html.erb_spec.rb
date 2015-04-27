require 'rails_helper'

RSpec.describe "experiments/show", type: :view do
  before(:each) do
    @experiment = assign(:experiment, Experiment.create!(
      :title => "Title",
      :description => "MyText",
      :participation => "Participation",
      :voters => 2,
      :ranking => "9.99",
      :interaction => "Interaction",
      :status => "Status",
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Participation/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Interaction/)
    expect(rendered).to match(/Status/)
  end
end

require 'rails_helper'

RSpec.describe "experiments/index", type: :view do
  before(:each) do
    assign(:experiments, [
      Experiment.create!(),
      Experiment.create!()
    ])
  end

  it "renders a list of experiments" do
    render
  end
end

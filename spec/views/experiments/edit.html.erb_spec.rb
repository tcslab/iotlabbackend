require 'rails_helper'

RSpec.describe "experiments/edit", type: :view do
  before(:each) do
    @experiment = assign(:experiment, Experiment.create!())
  end

  it "renders the edit experiment form" do
    render

    assert_select "form[action=?][method=?]", experiment_path(@experiment), "post" do
    end
  end
end

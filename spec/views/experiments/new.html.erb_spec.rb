require 'rails_helper'

RSpec.describe "experiments/new", type: :view do
  before(:each) do
    assign(:experiment, Experiment.new())
  end

  it "renders new experiment form" do
    render

    assert_select "form[action=?][method=?]", experiments_path, "post" do
    end
  end
end

require 'rails_helper'

RSpec.describe "experiments/new", type: :view do
  before(:each) do
    assign(:experiment, Experiment.new(
      :title => "MyString",
      :description => "MyText",
      :participation => "MyString",
      :voters => 1,
      :ranking => "9.99",
      :interaction => "MyString",
      :status => "MyString",
    ))
  end

  it "renders new experiment form" do
    render

    assert_select "form[action=?][method=?]", experiments_path, "post" do

      assert_select "input#experiment_title[name=?]", "experiment[title]"

      assert_select "textarea#experiment_description[name=?]", "experiment[description]"

      assert_select "input#experiment_participation[name=?]", "experiment[participation]"

      assert_select "input#experiment_voters[name=?]", "experiment[voters]"

      assert_select "input#experiment_ranking[name=?]", "experiment[ranking]"

      assert_select "input#experiment_interaction[name=?]", "experiment[interaction]"

      assert_select "input#experiment_status[name=?]", "experiment[status]"

    end
  end
end

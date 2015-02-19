require 'rails_helper'

RSpec.describe "experiments/new", type: :view do
  before(:each) do
    assign(:experiment, Experiment.new(
      :title => "MyString",
      :description => "MyString",
      :start_datetime => "MyString",
      :end_datetime => "MyString",
      :participation => "MyString",
      :voters => "MyString",
      :ranking => "MyString",
      :interaction => "MyString",
      :status => "MyString",
      :location => "MyString",
      :radius => "MyString",
      :minimum_age => "MyString",
      :maximum_age => "MyString",
      :gender => "MyString",
      :employment_sector => "MyString",
      :employment_status => "MyString",
      :camera => "MyString",
      :location => "MyString",
      :accelerometer => "MyString"
    ))
  end

  it "renders new experiment form" do
    render

    assert_select "form[action=?][method=?]", experiments_path, "post" do

      assert_select "input#experiment_title[name=?]", "experiment[title]"

      assert_select "input#experiment_description[name=?]", "experiment[description]"

      assert_select "input#experiment_start_datetime[name=?]", "experiment[start_datetime]"

      assert_select "input#experiment_end_datetime[name=?]", "experiment[end_datetime]"

      assert_select "input#experiment_participation[name=?]", "experiment[participation]"

      assert_select "input#experiment_voters[name=?]", "experiment[voters]"

      assert_select "input#experiment_ranking[name=?]", "experiment[ranking]"

      assert_select "input#experiment_interaction[name=?]", "experiment[interaction]"

      assert_select "input#experiment_status[name=?]", "experiment[status]"

      assert_select "input#experiment_location[name=?]", "experiment[location]"

      assert_select "input#experiment_radius[name=?]", "experiment[radius]"

      assert_select "input#experiment_minimum_age[name=?]", "experiment[minimum_age]"

      assert_select "input#experiment_maximum_age[name=?]", "experiment[maximum_age]"

      assert_select "input#experiment_gender[name=?]", "experiment[gender]"

      assert_select "input#experiment_employment_sector[name=?]", "experiment[employment_sector]"

      assert_select "input#experiment_employment_status[name=?]", "experiment[employment_status]"

      assert_select "input#experiment_camera[name=?]", "experiment[camera]"

      assert_select "input#experiment_location[name=?]", "experiment[location]"

      assert_select "input#experiment_accelerometer[name=?]", "experiment[accelerometer]"
    end
  end
end

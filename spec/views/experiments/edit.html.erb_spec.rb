require 'rails_helper'

RSpec.describe "experiments/edit", type: :view do
  before(:each) do
    @experiment = assign(:experiment, Experiment.create!(
      :title => "MyString",
      :description => "MyText",
      :participation => "MyString",
      :devices => 1,
      :voters => 1,
      :ranking => "9.99",
      :interaction => "MyString",
      :status => "MyString",
      :latitude => "",
      :longitude => "",
      :location => "MyString",
      :radius => 1,
      :minimum_age => "MyString",
      :maximum_age => "MyString",
      :gender => "MyString",
      :employment_sector => "MyString",
      :employment_status => "MyString",
      :camera => "MyString",
      :accelerometer => "MyString"
    ))
  end

  it "renders the edit experiment form" do
    render

    assert_select "form[action=?][method=?]", experiment_path(@experiment), "post" do

      assert_select "input#experiment_title[name=?]", "experiment[title]"

      assert_select "textarea#experiment_description[name=?]", "experiment[description]"

      assert_select "input#experiment_participation[name=?]", "experiment[participation]"

      assert_select "input#experiment_devices[name=?]", "experiment[devices]"

      assert_select "input#experiment_voters[name=?]", "experiment[voters]"

      assert_select "input#experiment_ranking[name=?]", "experiment[ranking]"

      assert_select "input#experiment_interaction[name=?]", "experiment[interaction]"

      assert_select "input#experiment_status[name=?]", "experiment[status]"

      assert_select "input#experiment_latitude[name=?]", "experiment[latitude]"

      assert_select "input#experiment_longitude[name=?]", "experiment[longitude]"

      assert_select "input#experiment_location[name=?]", "experiment[location]"

      assert_select "input#experiment_radius[name=?]", "experiment[radius]"

      assert_select "input#experiment_minimum_age[name=?]", "experiment[minimum_age]"

      assert_select "input#experiment_maximum_age[name=?]", "experiment[maximum_age]"

      assert_select "input#experiment_gender[name=?]", "experiment[gender]"

      assert_select "input#experiment_employment_sector[name=?]", "experiment[employment_sector]"

      assert_select "input#experiment_employment_status[name=?]", "experiment[employment_status]"

      assert_select "input#experiment_camera[name=?]", "experiment[camera]"

      assert_select "input#experiment_accelerometer[name=?]", "experiment[accelerometer]"
    end
  end
end

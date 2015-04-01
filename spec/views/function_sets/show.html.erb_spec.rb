require 'rails_helper'

RSpec.describe "function_sets/show", type: :view do
  before(:each) do
    @function_set = assign(:function_set, FunctionSet.create!(
      :name => "Name",
      :restype => "Restype",
      :description => "MyText",
      :root_path => "Root Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Restype/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Root Path/)
  end
end

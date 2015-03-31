require 'rails_helper'

RSpec.describe "data_types/show", type: :view do
  before(:each) do
    @data_type = assign(:data_type, DataType.create!(
      :name => "Name",
      :plainformat => "Plainformat",
      :senml => "Senml"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Plainformat/)
    expect(rendered).to match(/Senml/)
  end
end

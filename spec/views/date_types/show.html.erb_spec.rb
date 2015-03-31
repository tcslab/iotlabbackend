require 'rails_helper'

RSpec.describe "date_types/show", type: :view do
  before(:each) do
    @date_type = assign(:date_type, DateType.create!(
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

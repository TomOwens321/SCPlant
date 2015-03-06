require 'rails_helper'

RSpec.describe "common_names/show", :type => :view do
  before(:each) do
    @common_name = assign(:common_name, CommonName.create!(
      :name => "Name",
      :common_name => "Common Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Common Name/)
    expect(rendered).to match(/MyText/)
  end
end

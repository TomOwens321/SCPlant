require 'rails_helper'

RSpec.describe "families/show", :type => :view do
  before(:each) do
    @family = assign(:family, Family.create!(
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

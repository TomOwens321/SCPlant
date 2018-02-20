require 'rails_helper'

RSpec.describe "plants/show", :type => :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      :name => "Name",
      :family => nil,
      :genus => nil,
      :species => nil,
      :common_name => nil,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end

require 'rails_helper'

RSpec.describe "locations/show", :type => :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "Name",
      :area => "Area",
      :city => "City",
      :county => "County",
      :state => "State",
      :latitude => 1.5,
      :longitude => 1.5,
      :altitude => 1,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/County/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end

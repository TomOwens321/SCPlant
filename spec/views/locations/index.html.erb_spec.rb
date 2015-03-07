require 'rails_helper'

RSpec.describe "locations/index", :type => :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :name => "Name",
        :area => "Area",
        :city => "City",
        :county => "County",
        :state => "State",
        :lattitude => 1.5,
        :longitude => 1.5,
        :altitude => 1,
        :notes => "MyText"
      ),
      Location.create!(
        :name => "Name",
        :area => "Area",
        :city => "City",
        :county => "County",
        :state => "State",
        :lattitude => 1.5,
        :longitude => 1.5,
        :altitude => 1,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "County".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

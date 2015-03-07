require 'rails_helper'

RSpec.describe "locations/new", :type => :view do
  before(:each) do
    assign(:location, Location.new(
      :name => "MyString",
      :area => "MyString",
      :city => "MyString",
      :county => "MyString",
      :state => "MyString",
      :lattitude => 1.5,
      :longitude => 1.5,
      :altitude => 1,
      :notes => "MyText"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_area[name=?]", "location[area]"

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_county[name=?]", "location[county]"

      assert_select "input#location_state[name=?]", "location[state]"

      assert_select "input#location_lattitude[name=?]", "location[lattitude]"

      assert_select "input#location_longitude[name=?]", "location[longitude]"

      assert_select "input#location_altitude[name=?]", "location[altitude]"

      assert_select "textarea#location_notes[name=?]", "location[notes]"
    end
  end
end

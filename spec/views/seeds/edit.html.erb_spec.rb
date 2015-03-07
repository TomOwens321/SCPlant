require 'rails_helper'

RSpec.describe "seeds/edit", :type => :view do
  before(:each) do
    @seed = assign(:seed, Seed.create!(
      :lot => "MyString",
      :plant => nil,
      :vendor => nil,
      :location => nil,
      :collected_by => "MyString",
      :clean => false,
      :quantity => 1,
      :remaining => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit seed form" do
    render

    assert_select "form[action=?][method=?]", seed_path(@seed), "post" do

      assert_select "input#seed_lot[name=?]", "seed[lot]"

      assert_select "input#seed_plant_id[name=?]", "seed[plant_id]"

      assert_select "input#seed_vendor_id[name=?]", "seed[vendor_id]"

      assert_select "input#seed_location_id[name=?]", "seed[location_id]"

      assert_select "input#seed_collected_by[name=?]", "seed[collected_by]"

      assert_select "input#seed_clean[name=?]", "seed[clean]"

      assert_select "input#seed_quantity[name=?]", "seed[quantity]"

      assert_select "input#seed_remaining[name=?]", "seed[remaining]"

      assert_select "textarea#seed_notes[name=?]", "seed[notes]"
    end
  end
end

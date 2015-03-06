require 'rails_helper'

RSpec.describe "plants/new", :type => :view do
  before(:each) do
    assign(:plant, Plant.new(
      :name => "MyString",
      :family => nil,
      :genus => nil,
      :species => nil,
      :common_name => nil,
      :description => "MyText"
    ))
  end

  it "renders new plant form" do
    render

    assert_select "form[action=?][method=?]", plants_path, "post" do

      assert_select "input#plant_name[name=?]", "plant[name]"

      assert_select "input#plant_family_id[name=?]", "plant[family_id]"

      assert_select "input#plant_genus_id[name=?]", "plant[genus_id]"

      assert_select "input#plant_species_id[name=?]", "plant[species_id]"

      assert_select "input#plant_common_name_id[name=?]", "plant[common_name_id]"

      assert_select "textarea#plant_description[name=?]", "plant[description]"
    end
  end
end

require 'rails_helper'

RSpec.describe "plants/edit", :type => :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      :name => "MyString",
      :family => nil,
      :genus => nil,
      :species => nil,
      :common_name => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit plant form" do
    render

    assert_select "form[action=?][method=?]", plant_path(@plant), "post" do

      assert_select "input#plant_name[name=?]", "plant[name]"

      assert_select "input#plant_family_id[name=?]", "plant[family_id]"

      assert_select "input#plant_genus_id[name=?]", "plant[genus_id]"

      assert_select "input#plant_species_id[name=?]", "plant[species_id]"

      assert_select "input#plant_common_name_id[name=?]", "plant[common_name_id]"

      assert_select "textarea#plant_description[name=?]", "plant[description]"
    end
  end
end

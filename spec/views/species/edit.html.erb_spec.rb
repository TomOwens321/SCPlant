require 'rails_helper'

RSpec.describe "species/edit", :type => :view do
  before(:each) do
    @species = assign(:species, Species.create!(
      :name => "MyString",
      :common_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit species form" do
    render

    assert_select "form[action=?][method=?]", species_path(@species), "post" do

      assert_select "input#species_name[name=?]", "species[name]"

      assert_select "input#species_common_name[name=?]", "species[common_name]"

      assert_select "textarea#species_description[name=?]", "species[description]"
    end
  end
end

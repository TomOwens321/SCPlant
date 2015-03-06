require 'rails_helper'

RSpec.describe "species/new", :type => :view do
  before(:each) do
    assign(:species, Species.new(
      :name => "MyString",
      :common_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new species form" do
    render

    assert_select "form[action=?][method=?]", species_index_path, "post" do

      assert_select "input#species_name[name=?]", "species[name]"

      assert_select "input#species_common_name[name=?]", "species[common_name]"

      assert_select "textarea#species_description[name=?]", "species[description]"
    end
  end
end

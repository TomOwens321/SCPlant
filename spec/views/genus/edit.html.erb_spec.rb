require 'rails_helper'

RSpec.describe "genus/edit", :type => :view do
  before(:each) do
    @genus = assign(:genus, Genus.create!(
      :name => "MyString",
      :common_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit genus form" do
    render

    assert_select "form[action=?][method=?]", genus_path(@genus), "post" do

      assert_select "input#genus_name[name=?]", "genus[name]"

      assert_select "input#genus_common_name[name=?]", "genus[common_name]"

      assert_select "textarea#genus_description[name=?]", "genus[description]"
    end
  end
end

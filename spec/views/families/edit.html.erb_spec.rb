require 'rails_helper'

RSpec.describe "families/edit", :type => :view do
  before(:each) do
    @family = assign(:family, Family.create!(
      :name => "MyString",
      :common_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit family form" do
    render

    assert_select "form[action=?][method=?]", family_path(@family), "post" do

      assert_select "input#family_name[name=?]", "family[name]"

      assert_select "input#family_common_name[name=?]", "family[common_name]"

      assert_select "textarea#family_description[name=?]", "family[description]"
    end
  end
end

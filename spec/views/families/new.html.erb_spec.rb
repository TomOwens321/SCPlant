require 'rails_helper'

RSpec.describe "families/new", :type => :view do
  before(:each) do
    assign(:family, Family.new(
      :name => "MyString",
      :common_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new family form" do
    render

    assert_select "form[action=?][method=?]", families_path, "post" do

      assert_select "input#family_name[name=?]", "family[name]"

      assert_select "input#family_common_name[name=?]", "family[common_name]"

      assert_select "textarea#family_description[name=?]", "family[description]"
    end
  end
end

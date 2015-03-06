require 'rails_helper'

RSpec.describe "common_names/new", :type => :view do
  before(:each) do
    assign(:common_name, CommonName.new(
      :name => "MyString",
      :common_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new common_name form" do
    render

    assert_select "form[action=?][method=?]", common_names_path, "post" do

      assert_select "input#common_name_name[name=?]", "common_name[name]"

      assert_select "input#common_name_common_name[name=?]", "common_name[common_name]"

      assert_select "textarea#common_name_description[name=?]", "common_name[description]"
    end
  end
end

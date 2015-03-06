require 'rails_helper'

RSpec.describe "common_names/edit", :type => :view do
  before(:each) do
    @common_name = assign(:common_name, CommonName.create!(
      :name => "MyString",
      :common_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit common_name form" do
    render

    assert_select "form[action=?][method=?]", common_name_path(@common_name), "post" do

      assert_select "input#common_name_name[name=?]", "common_name[name]"

      assert_select "input#common_name_common_name[name=?]", "common_name[common_name]"

      assert_select "textarea#common_name_description[name=?]", "common_name[description]"
    end
  end
end

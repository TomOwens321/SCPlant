require 'rails_helper'

RSpec.describe "common_names/index", :type => :view do
  before(:each) do
    assign(:common_names, [
      CommonName.create!(
        :name => "Name",
        :common_name => "Common Name",
        :description => "MyText"
      ),
      CommonName.create!(
        :name => "Name",
        :common_name => "Common Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of common_names" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

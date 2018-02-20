require 'rails_helper'

RSpec.describe "families/index", :type => :view do
  before(:each) do
    assign(:families, [
      Family.create!(
        :name => "Name",
        :common_name => "Common Name",
        :description => "MyText"
      ),
      Family.create!(
        :name => "Name",
        :common_name => "Common Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of families" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

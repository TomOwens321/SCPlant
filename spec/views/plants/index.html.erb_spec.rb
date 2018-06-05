require 'rails_helper'

RSpec.describe "plants/index", :type => :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        :name => "Name",
        :family => nil,
        :genus => nil,
        :species => nil,
        :common_name => nil,
        :description => "MyText"
      ),
      Plant.create!(
        :name => "Name",
        :family => nil,
        :genus => nil,
        :species => nil,
        :common_name => nil,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

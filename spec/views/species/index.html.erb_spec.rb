require 'rails_helper'

RSpec.describe "species/index", :type => :view do
  before(:each) do
    assign(:species, [
      Species.create!(
        :name => "Name",
        :common_name => "Common Name",
        :description => "MyText"
      ),
      Species.create!(
        :name => "Name",
        :common_name => "Common Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of species" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

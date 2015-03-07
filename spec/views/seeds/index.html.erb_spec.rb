require 'rails_helper'

RSpec.describe "seeds/index", :type => :view do
  before(:each) do
    assign(:seeds, [
      Seed.create!(
        :lot => "Lot",
        :plant => nil,
        :vendor => nil,
        :location => nil,
        :collected_by => "Collected By",
        :clean => false,
        :quantity => 1,
        :remaining => 2,
        :notes => "MyText"
      ),
      Seed.create!(
        :lot => "Lot",
        :plant => nil,
        :vendor => nil,
        :location => nil,
        :collected_by => "Collected By",
        :clean => false,
        :quantity => 1,
        :remaining => 2,
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of seeds" do
    render
    assert_select "tr>td", :text => "Lot".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Collected By".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

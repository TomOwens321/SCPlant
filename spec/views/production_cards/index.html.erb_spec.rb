require 'rails_helper'

RSpec.describe "production_cards/index", :type => :view do
  before(:each) do
    assign(:production_cards, [
      ProductionCard.create!(
        :card_number => "Card Number",
        :plant => nil,
        :seed => nil,
        :seed_quantity => 1,
        :quantity_needed => 2,
        :quantity_produced => 3,
        :order => nil,
        :seed_decremented => false,
        :active => false
      ),
      ProductionCard.create!(
        :card_number => "Card Number",
        :plant => nil,
        :seed => nil,
        :seed_quantity => 1,
        :quantity_needed => 2,
        :quantity_produced => 3,
        :order => nil,
        :seed_decremented => false,
        :active => false
      )
    ])
  end

  it "renders a list of production_cards" do
    render
    assert_select "tr>td", :text => "Card Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

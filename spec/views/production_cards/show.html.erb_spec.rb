require 'rails_helper'

RSpec.describe "production_cards/show", :type => :view do
  before(:each) do
    @production_card = assign(:production_card, ProductionCard.create!(
      :card_number => "Card Number",
      :plant => nil,
      :seed => nil,
      :seed_quantity => 1,
      :quantity_needed => 2,
      :quantity_produced => 3,
      :order => nil,
      :seed_decremented => false,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Card Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end

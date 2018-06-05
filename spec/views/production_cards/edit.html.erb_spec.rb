require 'rails_helper'

RSpec.describe "production_cards/edit", :type => :view do
  before(:each) do
    @production_card = assign(:production_card, ProductionCard.create!(
      :card_number => "MyString",
      :plant => nil,
      :seed => nil,
      :seed_quantity => 1,
      :quantity_needed => 1,
      :quantity_produced => 1,
      :order => nil,
      :seed_decremented => false,
      :active => false
    ))
  end

  it "renders the edit production_card form" do
    render

    assert_select "form[action=?][method=?]", production_card_path(@production_card), "post" do

      assert_select "input#production_card_card_number[name=?]", "production_card[card_number]"

      assert_select "input#production_card_plant_id[name=?]", "production_card[plant_id]"

      assert_select "input#production_card_seed_id[name=?]", "production_card[seed_id]"

      assert_select "input#production_card_seed_quantity[name=?]", "production_card[seed_quantity]"

      assert_select "input#production_card_quantity_needed[name=?]", "production_card[quantity_needed]"

      assert_select "input#production_card_quantity_produced[name=?]", "production_card[quantity_produced]"

      assert_select "input#production_card_order_id[name=?]", "production_card[order_id]"

      assert_select "input#production_card_seed_decremented[name=?]", "production_card[seed_decremented]"

      assert_select "input#production_card_active[name=?]", "production_card[active]"
    end
  end
end

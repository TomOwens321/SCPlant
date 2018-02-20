json.array!(@production_cards) do |production_card|
  json.extract! production_card, :id, :card_number, :plant_id, :seed_id, :seed_quantity, :quantity_needed, :quantity_produced, :order_id, :seed_decremented, :active
  json.url production_card_url(production_card, format: :json)
end

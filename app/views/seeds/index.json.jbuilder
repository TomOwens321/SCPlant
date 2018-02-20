json.array!(@seeds) do |seed|
  json.extract! seed, :id, :lot, :plant_id, :collection_date, :vendor_id, :location_id, :collected_by, :clean, :quantity, :remaining, :notes
  json.url seed_url(seed, format: :json)
end

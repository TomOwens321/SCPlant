json.array!(@pollinators) do |pollinator|
  json.extract! pollinator, :id, :name, :family_id, :genus_id, :species_id, :common_name, :description
  json.url pollinator_url(pollinator, format: :json)
end

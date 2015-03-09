json.array!(@plants) do |plant|
  json.extract! plant, :id, :name, :family_id, :genus_id, :species_id, :common_name, :description
  json.url plant_url(plant, format: :json)
end

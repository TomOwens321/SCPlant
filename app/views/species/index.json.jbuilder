json.array!(@species) do |species|
  json.extract! species, :id, :name, :common_name, :description
  json.url species_url(species, format: :json)
end

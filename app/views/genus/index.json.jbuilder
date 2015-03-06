json.array!(@genus) do |genus|
  json.extract! genus, :id, :name, :common_name, :description
  json.url genus_url(genus, format: :json)
end

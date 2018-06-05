json.array!(@families) do |family|
  json.extract! family, :id, :name, :common_name, :description
  json.url family_url(family, format: :json)
end

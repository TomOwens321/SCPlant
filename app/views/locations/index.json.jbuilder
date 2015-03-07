json.array!(@locations) do |location|
  json.extract! location, :id, :name, :area, :city, :county, :state, :lattitude, :longitude, :altitude, :notes
  json.url location_url(location, format: :json)
end

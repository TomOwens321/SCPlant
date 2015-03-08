json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :contact, :address1, :address2, :city, :state, :zipcode, :phone, :email, :website, :notes
  json.url vendor_url(vendor, format: :json)
end

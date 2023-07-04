json.extract! address, :id, :street, :city, :country, :zip, :created_at, :updated_at
json.url address_url(address, format: :json)

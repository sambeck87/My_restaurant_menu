json.extract! restaurant, :id, :phone_number, :type, :image, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)

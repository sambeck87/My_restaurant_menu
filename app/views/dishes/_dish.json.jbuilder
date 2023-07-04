json.extract! dish, :id, :name, :price, :image, :description, :created_at, :updated_at
json.url dish_url(dish, format: :json)

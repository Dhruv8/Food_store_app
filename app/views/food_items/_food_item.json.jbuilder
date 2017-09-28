json.extract! food_item, :id, :name, :price, :type, :created_at, :updated_at
json.url food_item_url(food_item, format: :json)

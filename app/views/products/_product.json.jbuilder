json.extract! product, :id, :category_id, :name, :description, :price, :image_url, :promotion_active, :promotion_price, :created_at, :updated_at
json.url product_url(product, format: :json)

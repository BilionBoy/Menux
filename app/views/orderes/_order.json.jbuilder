json.extract! order, :id, :establishment_id, :customer_id, :total_price, :status, :delivery_method, :delivery_address, :created_at, :updated_at
json.url order_url(order, format: :json)

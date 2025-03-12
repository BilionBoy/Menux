json.extract! pedido, :id, :user_id, :produto_id, :quantidade, :total, :status, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)

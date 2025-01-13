json.extract! categoria_produto, :id, :categoria_id, :produto_id, :created_at, :updated_at
json.url categoria_produto_url(categoria_produto, format: :json)

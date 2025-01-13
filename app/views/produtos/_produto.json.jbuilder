json.extract! produto, :id, :nome, :descricao, :preco_unitario, :preco_custo, :categoria_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)

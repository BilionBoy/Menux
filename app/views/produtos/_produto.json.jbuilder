json.extract! produto, :id, :nome, :descricao, :preco_unitario, :preco_custo, :estabelecimento_id, :imagem, :created_at, :updated_at
json.url produto_url(produto, format: :json)
json.imagem url_for(produto.imagem)

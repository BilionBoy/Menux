# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "user_estabelecimento", "users_estabelecimentos"
  inflect.irregular "funcao", "funcoes"
  inflect.irregular "produto", "produtos"
  inflect.irregular "categoria", "categorias"
  inflect.irregular "item_pedido", "itens_pedidos"
  inflect.irregular "avaliacao", "avaliacoes"
  inflect.irregular "estabelecimento", "estabelecimentos"
  inflect.irregular "categoria_produto", "categoria_produtos"
  inflect.irregular "cliente", "clientes"
  inflect.irregular "status_pedido", "status_pedidos"
  inflect.irregular "pedido", "pedidos"
  inflect.irregular "venda", "vendas"
  inflect.irregular "vendas_item_pedido", "vendas_item_pedidos"
  inflect.irregular "ticket", "tickets"
  inflect.irregular "tipo_compra", "tipo_compras"
end

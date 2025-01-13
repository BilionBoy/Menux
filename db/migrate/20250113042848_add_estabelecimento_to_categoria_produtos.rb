class AddEstabelecimentoToCategoriaProdutos < ActiveRecord::Migration[7.2]
  def change
    add_reference :categoria_produtos, :estabelecimento, null: true, foreign_key: true
  end
end

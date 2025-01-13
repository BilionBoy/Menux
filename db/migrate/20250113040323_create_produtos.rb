class CreateProdutos < ActiveRecord::Migration[7.2]
  def up
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco_unitario
      t.decimal :preco_custo
      t.references :estabelecimento, null: false, foreign_key: true

      t.timestamps
    end

    # Criar a associação com Active Storage para a imagem
    add_reference :produtos, :imagem, foreign_key: { to_table: :active_storage_attachments }
  end

  def down
    remove_reference :produtos, :imagem, foreign_key: { to_table: :active_storage_attachments }
    drop_table :produtos
  end
end

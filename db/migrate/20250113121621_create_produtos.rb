class CreateProdutos < ActiveRecord::Migration[7.2]
  def up
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco_unitario, precision: 10, scale: 2
      t.decimal :preco_custo, precision: 10, scale: 2
      t.references :categoria, null: false, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :produtos
  end
end

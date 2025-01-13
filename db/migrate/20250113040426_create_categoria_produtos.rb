class CreateCategoriaProdutos < ActiveRecord::Migration[7.2]
  def up
    create_table :categoria_produtos do |t|
      t.references :categoria, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true
      t.references :estabelecimento, null: true, foreign_key: true # Estabelecimento pode ser adicionado aqui

      t.timestamps
    end
  end

  def down
    drop_table :categoria_produtos
  end
end

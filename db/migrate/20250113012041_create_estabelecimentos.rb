class CreateEstabelecimentos < ActiveRecord::Migration[7.2]
  def up
    create_table :estabelecimentos do |t|
      t.string :nome, null: false
      t.string :cnpj, null: false
      t.text :endereco
      t.string :telefone

      t.timestamps
    end

    # Adicionando índice único para o cnpj
    add_index :estabelecimentos, :cnpj, unique: true
  end

  def down
    drop_table :estabelecimentos
  end
end

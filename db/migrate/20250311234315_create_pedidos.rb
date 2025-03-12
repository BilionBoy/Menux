# frozen_string_literal: true

class CreatePedidos < ActiveRecord::Migration[7.2]
  def up
    create_table :pedidos do |t|
      t.references :user
      t.references :produto
      t.integer :quantidade
      t.decimal :total
      t.string :status
          
      t.string :created_by
      t.string :updated_by
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :pedidos
  end
end

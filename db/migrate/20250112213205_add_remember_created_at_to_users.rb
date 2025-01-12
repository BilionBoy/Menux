# frozen_string_literal: true

class AddRememberCreatedAtToUsers < ActiveRecord::Migration[7.2]
  def up
    # Adicione aqui o código para "migrar" (criar ou alterar tabelas/colunas)
    add_column :users, :remember_created_at, :datetime
  end

  def down
    # Adicione aqui o código para "reverter" (desfazer alterações feitas no método `up`)
    remove_column :users, :remember_created_at
  end
end

class AddEstoqueToProdutos < ActiveRecord::Migration[7.2]
  def up
    add_column :produtos, :estoque, :integer, default: 0
  end

  def down
    remove_column :produtos, :estoque
  end
end

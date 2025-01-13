class CategoriaProduto < ApplicationRecord
  belongs_to :categoria
  belongs_to :produto
  belongs_to :estabelecimento # Aqui estamos associando CategoriaProduto a Estabelecimento

  # Validations, se necessário
  validates :categoria_id, :produto_id, presence: true
end

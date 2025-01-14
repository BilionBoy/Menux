# frozen_string_literal: true

class Produto < ApplicationRecord
  # Adicione aqui quaisquer metódos
  belongs_to :categoria

  # Validações

  validates :nome, :descricao, :preco_unitario, :preco_custo, :categoria_id,  presence: true
  has_one_attached :imagem
end

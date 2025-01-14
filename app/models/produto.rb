# frozen_string_literal: true

class Produto < ApplicationRecord
  # Adicione aqui quaisquer metódos
  belongs_to :categoria
  has_one_attached :imagem
  # Adicione aqui quaisquer validações

  validates :nome, :descricao, :preco_unitario, :preco_custo, :categoria_id,  presence: true
end

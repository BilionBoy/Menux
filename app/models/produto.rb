# frozen_string_literal: true

class Produto < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  belongs_to :categoria
  has_one_attached :imagem

  validates :nome, :descricao, :preco_unitario, :preco_custo, :categoria_id, :estoque,  presence: true
  validates :estoque, numericality: { greater_than_or_equal_to: 0 } # Garantir que o estoque não seja negativo
end

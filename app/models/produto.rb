# frozen_string_literal: true

class Produto < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  belongs_to :categoria
  has_one_attached :imagem

  validates :nome, :descricao, :preco_unitario, :preco_custo, :categoria_id,  presence: true
end

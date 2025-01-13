# frozen_string_literal: true

class Produto < ApplicationRecord
  belongs_to :estabelecimento
  has_many :categoria_produtos
  has_many :categorias, through: :categoria_produtos

  # Adicionando a associação com Active Storage para a imagem
  has_one_attached :imagem
end

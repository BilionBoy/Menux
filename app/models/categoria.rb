# frozen_string_literal: true

class Categoria < ApplicationRecord
  belongs_to :estabelecimento
  has_many :categoria_produtos
  has_many :produtos, through: :categoria_produtos
end

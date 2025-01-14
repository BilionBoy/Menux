# frozen_string_literal: true

class Estabelecimento < ApplicationRecord
  # Adicione aqui quaisquer metódos

  has_many :users_estabelecimentos
  has_many :users, through: :users_estabelecimentos
  has_many :categorias # Estabelecimento tem muitas categorias
  has_many :produtos, through: :categorias # Estabelecimento tem muitos produtos através de Categoria.

  # Adicione aqui quaisquer validações
  validates :nome, presence: true
end

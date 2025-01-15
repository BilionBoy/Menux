# frozen_string_literal: true

class Estabelecimento < ApplicationRecord
  # Associations
  has_many :users_estabelecimentos, dependent: :destroy
  has_many :users, through: :users_estabelecimentos
  has_many :categorias, dependent: :destroy # Estabelecimento tem muitas categorias
  has_many :produtos, through: :categorias # Estabelecimento tem muitos produtos através de Categoria

  # Validations
  validates :nome, presence: true
end

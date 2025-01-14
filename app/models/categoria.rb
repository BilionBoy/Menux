# frozen_string_literal: true

class Categoria < ApplicationRecord
  # Adicione aqui quaisquer metódos
  has_many :produtos
  belongs_to :estabelecimento

  # Adicione aqui quaisquer validações
  validates :estabelecimento_id, presence: true  # Se o estabelecimento for obrigatório
  validates :nome, presence: true
end

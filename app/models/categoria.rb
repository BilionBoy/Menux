# frozen_string_literal: true

class Categoria < ApplicationRecord
  has_many :produtos
  belongs_to :estabelecimento

  validates :estabelecimento_id, presence: true  # Se o estabelecimento for obrigatório
  validates :nome, presence: true
end

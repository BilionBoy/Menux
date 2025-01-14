# frozen_string_literal: true

class Categoria < ApplicationRecord
  # Adicione aqui quaisquer metódos
  belongs_to :estabelecimento # Cada categoria pertence a um estabelecimento
  has_many :produtos          # Uma categoria pode ter muitos produtos

  # Adicione aqui quaisquer validações
  validates :estabelecimento_id, presence: true  # Se o estabelecimento for obrigatório
  validates :nome, presence: true
end

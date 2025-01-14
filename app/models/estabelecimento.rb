# frozen_string_literal: true

class Estabelecimento < ApplicationRecord
  # Adicione aqui quaisquer metódos

  has_many :users_estabelecimentos
  has_many :users, through: :users_estabelecimentos

  # Adicione aqui quaisquer validações
  validates :nome, presence: true
end

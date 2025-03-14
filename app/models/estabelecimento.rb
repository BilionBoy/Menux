# frozen_string_literal: true

class Estabelecimento < ApplicationRecord
  has_many :users_estabelecimentos
  has_many :users, through: :users_estabelecimentos

   # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
   validates :nome, presence: true  # Certifique-se de que o atributo existe
end

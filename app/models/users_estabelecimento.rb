# frozen_string_literal: true

class UsersEstabelecimento < ApplicationRecord
  # Adicione aqui quaisquer métodos
  belongs_to :user
  belongs_to :estabelecimento

  # Adicione aqui quaisquer validações
  validates :user_id, uniqueness: { scope: :estabelecimento_id, message: "Já está associado a esse estabelecimento" }
end

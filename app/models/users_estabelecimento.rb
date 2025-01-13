# frozen_string_literal: true

class UsersEstabelecimento < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  belongs_to :user
  belongs_to :estabelecimento

  validates :user_id, uniqueness: { scope: :estabelecimento_id, message: "Já está associado a esse estabelecimento" }
end

# frozen_string_literal: true

class Pedido < ApplicationRecord
  # Adicione aqui quaisquer métodos ou validações padrão para seus modelos
  belongs_to :produto
  belongs_to :user
end

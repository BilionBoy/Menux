# frozen_string_literal: true

class CategoriaProduto < ApplicationRecord
  belongs_to :categoria
  belongs_to :produto
end

# frozen_string_literal: true

class Funcao < ApplicationRecord
  validates :nome, presence: true
end

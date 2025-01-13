# frozen_string_literal: true

class Funcao < ApplicationRecord
  has_many :users

  validates :nome, presence: true
end

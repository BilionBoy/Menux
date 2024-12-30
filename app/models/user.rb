class User < ApplicationRecord
  self.table_name = "users"
  # Devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validação para o campo name
  validates :name, presence: true
end

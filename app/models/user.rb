class User < ApplicationRecord
  # Devise Modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  # Associations
  belongs_to :funcao
  has_many :users_estabelecimentos
  has_many :estabelecimentos, through: :users_estabelecimentos

  # Validations
  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true, format: { with: /\A\d{11}\z/, message: "deve conter 11 dígitos numéricos" }
  validates :telefone, presence: true
end

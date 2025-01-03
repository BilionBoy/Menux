class Order < ApplicationRecord
  belongs_to :establishment
  belongs_to :customer
end

class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :order
end

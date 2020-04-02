class Order < ApplicationRecord
  has_many :tickets
  has_one :customer
end

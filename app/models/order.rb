class Order < ApplicationRecord
  has_many :tickets
  belongs_to :customer
end

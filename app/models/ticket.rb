class Ticket < ApplicationRecord
  belongs_to :event_information
  has_one :customer, through: :order
  has_one :order
end

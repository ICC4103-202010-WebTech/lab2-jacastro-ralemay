class Ticket < ApplicationRecord
  belongs_to :event_information
  has_one :customer, through: order
  belongs_to :order
end

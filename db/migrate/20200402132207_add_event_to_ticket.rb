class AddEventToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :event_information, null: true, foreign_key: true
  end
end

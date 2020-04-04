class AddOrderToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :orders, null: true, foreign_key: true
  end
end

class AddCustomerToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :Customer, null: true, foreign_key: true
  end
end

class AddTypeToTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets,:'Type', :string
  end
end

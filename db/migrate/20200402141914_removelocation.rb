class Removelocation < ActiveRecord::Migration[6.0]
  def change
    remove_column :event_informations, :location
  end
end

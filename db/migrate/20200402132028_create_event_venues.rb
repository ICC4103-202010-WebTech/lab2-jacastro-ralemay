class CreateEventVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :event_venues do |t|
      t.string :name
      t.string :address
      t.numeric :capacity

      t.timestamps
    end
  end
end

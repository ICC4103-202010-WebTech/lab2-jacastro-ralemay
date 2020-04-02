class AddEventVenueToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :event_informations, :event_venue, null: true, foreign_key: true
  end
end

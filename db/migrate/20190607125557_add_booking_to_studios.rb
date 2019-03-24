class AddBookingToStudios < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookings, :studio, index: true
  end
end

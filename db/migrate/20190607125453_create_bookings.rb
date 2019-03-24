class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :owner, references: :accounts
      t.integer :state # enum for status (request, approved, paid, etc.)
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end

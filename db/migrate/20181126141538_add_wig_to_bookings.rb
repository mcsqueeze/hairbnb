class AddWigToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :wig, foreign_key: true
  end
end

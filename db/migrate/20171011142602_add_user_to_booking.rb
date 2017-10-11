class AddUserToBooking < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookings, :user, foreign_key: true, null: false
  end
end

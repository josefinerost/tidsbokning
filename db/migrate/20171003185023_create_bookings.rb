class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.datetime(:start)
      t.datetime(:stop)
      t.timestamps
    end
  end
end

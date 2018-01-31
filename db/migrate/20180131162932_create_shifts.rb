class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.integer(:weekday, default: 0, null: false)
      t.time(:start)
      t.time(:stop)

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime(:start)
      t.datetime(:stop)
      t.string(:title)
      t.text(:description)
      t.timestamps
    end
  end
end

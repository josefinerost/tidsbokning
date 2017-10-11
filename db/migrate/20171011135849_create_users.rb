class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string(:name, null: false)
      t.string(:email, null: false, index: { unique: true })
      t.integer(:role, default: 0, null: false)

      t.timestamps
    end
  end
end

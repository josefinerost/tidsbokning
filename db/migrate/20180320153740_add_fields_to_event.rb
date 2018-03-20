class AddFieldsToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column(:events, :location, :string)
    add_column(:events, :price, :integer)
    add_column(:events, :summary, :text)
  end
end

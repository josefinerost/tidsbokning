class Booking < ApplicationRecord
  belongs_to(:user)
  def to_s
    "Bokning: #{id}"
  end
end

class Booking < ApplicationRecord
  def to_s
    "Bokning: #{id}, #{start}, #{stop}"
  end
end

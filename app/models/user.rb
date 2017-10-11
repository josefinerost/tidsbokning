class User < ApplicationRecord
  enum(role: { normal: 0, admin: 10 })
  has_many(:bookings)
end

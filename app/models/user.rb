class User < ApplicationRecord
  include Clearance::User

  enum(role: { normal: 0, admin: 10 })
  has_many(:bookings)
  has_many(:events)

  validates(:name, :email, presence: true)

  def to_s
    name
  end
end

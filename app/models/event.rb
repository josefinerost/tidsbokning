class Event < ApplicationRecord
  belongs_to(:user)
  has_one_attached(:image)
  validates(:title, :start, :stop, :location, :price, presence: true)
  validates(:price, numericality: { greater_than_or_equal_to: 0 })

  def to_param
    "#{id}-#{title.parameterize}"
  end
end

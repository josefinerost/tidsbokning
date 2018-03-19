class Event < ApplicationRecord
  belongs_to(:user)
  validates(:title, :start, :stop, presence: true)

  def to_param
    "#{id}-#{title.parameterize}"
  end
end

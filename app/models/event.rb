class Event < ApplicationRecord
  belongs_to(:user)
  validates(:title, :start, :stop, presence: true)
end

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  validates :starts_at, :ends_at, presence: true
end

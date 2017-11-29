class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :title, :description, :photo, :price_per_day, :address, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

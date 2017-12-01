class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :title, :description, :photo, :price_per_day, :address, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  EQUIPMENTS = {
    "bell": "bell.png",
    "lights": "light.png",
    "pump": "pump.png" ,
    "child_seat": "seat.png",
    "padlock": "unlocked.png",
    "helmet": "helmet.png",
    "basket": "basket.png",
  }

end

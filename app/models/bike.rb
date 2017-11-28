class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :title, :description, :photo, :price_per_day, :address, presence: true
  mount_uploader :photo, PhotoUploader
end

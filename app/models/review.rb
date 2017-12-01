class Review < ApplicationRecord
  belongs_to :bike
  validates :content, length: { minimum: 3 }
end

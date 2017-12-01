class Review < ApplicationRecord
  belongs_to :bike
  validates :content, length: { minimum: 3 }
  validates :rating, inclusion: { in:[0, 1, 2, 3, 4, 5]}
end

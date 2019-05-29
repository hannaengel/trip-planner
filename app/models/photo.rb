class Photo < ApplicationRecord
  belongs_to :trip
  has_one_attached :image

  validates :image, presence: true


end

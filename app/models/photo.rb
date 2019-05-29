class Photo < ApplicationRecord
  belongs_to :trip
  has_one_attached :img
end

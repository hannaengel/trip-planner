class Activity < ApplicationRecord
  has_many :itineraries
  has_many :trips, through: :itineraries

  validates :name, presence: true
  validates :description, presence: true
end

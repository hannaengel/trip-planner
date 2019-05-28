class Activity < ApplicationRecord
  has_many :itineraries
  has_many :trips, through: :itineraries
end

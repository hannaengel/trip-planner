class Itinerary < ApplicationRecord
  belongs_to :activity
  belongs_to :trip
end
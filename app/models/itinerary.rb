class Itinerary < ApplicationRecord
  belongs_to :activity
  belongs_to :trip

  validates :day, presence: true
  validates :trip_id, presence: true

end

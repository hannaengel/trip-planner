class Activity < ApplicationRecord
  has_many :itineraries
  has_many :trips, through: :itineraries


  validates :name, presence: true
  validates :description, presence: true


  # accepts_nested_attributes_for :trips

 #  def trip_name=(name)
 #   trip = Trip.find_or_create_by(name: name)
 #   end
 #
 #   def trip_name
 #      self.trips ? self.trips.name : nil
 #   end
 #
 #   def trips_attributes=(trip_attributes)
 #   trip_attributes.values.each do |trip_attribute|
 #     trip = Trip.find_or_create_by(trip_attribute)
 #     self.trips << trip
 #   end
 # end


end

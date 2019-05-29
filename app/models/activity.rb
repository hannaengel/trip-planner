class Activity < ApplicationRecord
  has_many :itineraries
  has_many :trips, through: :itineraries

  def trip_name=(name)

   trip = Trip.find_or_create_by(name: name)

     trip.user_id = User.find(params[:trip][:name] == name)
      self.trips<< trip
   end

   def trip_name
      self.trips ? self.trips.name : nil
   end
end

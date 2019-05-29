class Trip < ApplicationRecord
  belongs_to :user
  has_many :itineraries
  has_many :photos
  has_many :activities, through: :itineraries

  validates :name, presence: true
  validates :destination, presence: true

end

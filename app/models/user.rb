class User < ApplicationRecord
    has_many :trips
    has_many :itineraries, through: :trips
    has_many :photos, through: :trips
    has_secure_password



   validates :username, :presence => true, :uniqueness => true
   #validates :password, :confirmation => true #password_confirmation attr

end

class User < ApplicationRecord
    has_many :trips
    attr_accessor :password



   validates :username, :presence => true, :uniqueness => true
   #validates :password, :confirmation => true #password_confirmation attr

end

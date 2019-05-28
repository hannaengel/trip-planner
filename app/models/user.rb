class User < ApplicationRecord
    has_many :trips
    attr_accessor :password


   validates :username, :presence => true, :uniqueness => true
   validates :password, :confirmation => true #password_confirmation attr

   before_save :encrypt_password
   after_save :clear_password

   def encrypt_password
     if password.present?
       salt = BCrypt::Engine.generate_salt
       encrypted_password = BCrypt::Engine.hash_secret(password, salt)
     end
   end

   def clear_password
     self.password = nil
   end


end

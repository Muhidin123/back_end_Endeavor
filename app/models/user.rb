class User < ApplicationRecord
    has_secure_password
    # has_one_attached :image
    has_many :trips
    has_many :favorites
    # validates :username, uniqueness: { case_sensitive: false }
    validates :username, :email, :password , :first_name, :last_name , presence: true
end

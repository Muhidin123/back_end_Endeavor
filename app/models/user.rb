class User < ApplicationRecord
    has_one_attached :avatar
    has_many :trips
    has_many :favorites
end

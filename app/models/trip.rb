class Trip < ApplicationRecord
    has_one_attached :image
    has_many :checkpoints
    belongs_to :user    
end

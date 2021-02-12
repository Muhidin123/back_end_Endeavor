class Trip < ApplicationRecord
    has_one_attached :image
    has_many :checkpoints,  :dependent => :delete_all
    belongs_to :user
end

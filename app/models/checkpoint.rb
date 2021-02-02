class Checkpoint < ApplicationRecord
  belongs_to :trip
  has_many_attached :images
end

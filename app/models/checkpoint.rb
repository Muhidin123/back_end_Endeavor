class Checkpoint < ApplicationRecord
  belongs_to :trip
  has_one_attached :picture
end

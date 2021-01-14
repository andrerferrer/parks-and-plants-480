class Plant < ApplicationRecord
  # associations
  belongs_to :garden

  # validations
  validates :name, presence: true
  validates :image_url, presence: true
end

class Restaurant < ApplicationRecord
  has_many :events, dependent: :destroy
  belongs_to :category

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end

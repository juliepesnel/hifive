class Event < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :participations, dependent: :destroy
end

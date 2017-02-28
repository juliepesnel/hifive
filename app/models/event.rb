class Event < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  has_many :participations, dependent: :destroy
  validates :happen_at, presence: true
  validates :due_at, presence: true

end

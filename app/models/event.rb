class Event < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  has_many :participations, dependent: :destroy
  has_many :users, through: :participations
  validates :happen_at, presence: true
  validates :due_at, presence: true

end


class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :events, dependent: :destroy
end

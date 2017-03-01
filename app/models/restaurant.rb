class Restaurant < ApplicationRecord
  has_many :events, dependent: :destroy
end

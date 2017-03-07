class Category < ApplicationRecord
  has_many :tastes
  has_many :restaurants
end

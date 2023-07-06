class Category < ApplicationRecord
  belongs_to :restaurant
  has_many :dishes

  validates :name, presence: true
end

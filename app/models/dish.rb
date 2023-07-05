class Dish < ApplicationRecord
  belongs_to :categories

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end

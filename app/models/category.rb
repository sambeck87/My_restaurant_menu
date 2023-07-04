class Category < ApplicationRecord
  belongs_to :restaurants
  has_many :dishes

  validates :name, presence: true
end

class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_one :addresses

  validates :name, presence: true, uniqueness: true
  validates :food, presence: true
end

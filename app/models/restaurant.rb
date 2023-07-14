class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_one :address

  validates :name, presence: true, uniqueness: true
  validates :food, presence: true
end

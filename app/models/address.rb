class Address < ApplicationRecord
  belongs_to :restaurant

  validates :street, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :zip, presence: true, numericality: {greater_than: 0}
end

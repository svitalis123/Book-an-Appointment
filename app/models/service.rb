class Service < ApplicationRecord
  validates :service, presence: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :labour, presence: true
  validates :engineer, presence: true
  validates :price, presence: true
  validates :duration, numericality: { only_integer: true }
end

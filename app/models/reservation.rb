class Reservation < ApplicationRecord
  validates :model, presence: true
  validates :year, numericality: { only_integer: true }
  validates :vehicle, presence: true
  validates :color, presence: true
  validates :service, presence: true
  has_many :users, through: :reservation_users
  has_many :reservation_users
end

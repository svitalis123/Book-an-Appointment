# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  has_many :reservations, through: :reservation_users
  has_many :reservation_users
end

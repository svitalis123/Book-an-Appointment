# frozen_string_literal: true

class ReservationUser < ApplicationRecord
  belongs_to :user
  belongs_to :reservation
end

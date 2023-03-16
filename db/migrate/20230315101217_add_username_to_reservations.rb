# frozen_string_literal: true

class AddUsernameToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :username, :string
  end
end

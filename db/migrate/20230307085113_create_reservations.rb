# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :vehicle
      t.string :model
      t.integer :year
      t.string :color
      t.string :location
      t.string :service

      t.timestamps
    end
  end
end

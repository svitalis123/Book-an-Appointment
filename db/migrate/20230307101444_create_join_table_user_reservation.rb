# frozen_string_literal: true

class CreateJoinTableUserReservation < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :reservations do |t|
      t.index %i[user_id reservation_id]
      t.index %i[reservation_id user_id]
    end
  end
end

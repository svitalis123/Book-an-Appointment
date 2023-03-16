class RenameReservationsUsersTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :reservations_users, :reservation_users
  end
end

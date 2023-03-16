class AddDateToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :date, :string
  end
end

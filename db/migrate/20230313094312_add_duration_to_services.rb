class AddDurationToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :duration, :time
  end
end

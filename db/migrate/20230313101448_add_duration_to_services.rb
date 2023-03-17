# frozen_string_literal: true

class AddDurationToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :duration, :integer
  end
end

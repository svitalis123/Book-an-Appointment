# frozen_string_literal: true

class AddEngineerToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :engineer, :string
  end
end

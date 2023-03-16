# frozen_string_literal: true

class AddPriceToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :price, :decimal
  end
end

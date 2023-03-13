class AddDescriptionToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :description, :string
  end
end

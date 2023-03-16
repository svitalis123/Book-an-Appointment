class AddPhotoToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :photo, :string
  end
end

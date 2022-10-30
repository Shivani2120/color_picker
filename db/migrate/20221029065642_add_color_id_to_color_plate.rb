class AddColorIdToColorPlate < ActiveRecord::Migration[7.0]
  def change
    add_column :color_plates, :color_id, :integer
  end
end

class CreateColorPlates < ActiveRecord::Migration[7.0]
  def change
    create_table :color_plates do |t|
      t.string :color_name
      t.string :color_code
      t.text :color_pik

      t.timestamps
    end
  end
end

class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.string :title,        null: false
      t.string :name,         null: false
      t.string :id_image,     null: false
      t.string :sample_image
      t.integer :genre,       null: false, default: 0
      t.integer :theme,       null: false, default: 0

      t.timestamps
    end
  end
end

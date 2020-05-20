class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :want,   null: false
      t.text :reward, null: false

      t.timestamps
    end
  end
end

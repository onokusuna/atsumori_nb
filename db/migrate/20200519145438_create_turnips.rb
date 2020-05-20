class CreateTurnips < ActiveRecord::Migration[5.2]
  def change
    create_table :turnips do |t|
      t.string :name,      null: false
      t.integer :price,    null: false
      t.string :password,  null: false
      t.text :want,        null: false
      t.time :started_at,  null: false
      t.time :finished_at, null: false

      t.timestamps
    end
  end
end

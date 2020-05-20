class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name,  null: false
      t.text :want
      t.text :reward
      t.text :contact

      t.timestamps
    end
  end
end

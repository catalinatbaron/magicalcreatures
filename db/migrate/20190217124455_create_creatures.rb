class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :super_power
      t.text :description
      t.string :photo
      t.references :user, foreign_key: true
      t.integer :price


      t.timestamps
    end
  end
end

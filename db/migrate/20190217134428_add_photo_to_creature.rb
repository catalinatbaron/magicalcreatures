class AddPhotoToCreature < ActiveRecord::Migration[5.2]
  def change
    add_column :creatures, :photo, :string
  end
end

class CreatePetPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :pet_photos do |t|
      t.integer :pet_id
      t.string :image

      t.timestamps
    end
  end
end

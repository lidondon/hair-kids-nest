class CreateHospitalPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :hospital_photos do |t|
      t.integer :hospital_id
      t.string :image

      t.timestamps
    end
  end
end

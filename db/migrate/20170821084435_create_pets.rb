class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :sex
      t.string :size
      t.string :color
      t.integer :person_id
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end

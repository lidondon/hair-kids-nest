class ResetDescriptionInPet < ActiveRecord::Migration[5.1]
  def change
  		change_column :pets, :description, :text
  end
end

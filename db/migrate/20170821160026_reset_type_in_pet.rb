class ResetTypeInPet < ActiveRecord::Migration[5.1]
  def change
  		rename_column :pets, :type, :type_id
  		change_column :pets, :type_id, 'integer USING CAST("type_id" AS integer)'
  end
end

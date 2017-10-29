class RenameContactToContactPerson < ActiveRecord::Migration[5.1]
  def change
  		rename_column :pets, :contact, :contact_person
  end
end

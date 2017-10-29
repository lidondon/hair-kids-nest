class AddContactToPets < ActiveRecord::Migration[5.1]
	def change
  		add_column :pets, :adopt_person_id, :int
  		add_column :pets, :contact, :string
  		add_column :pets, :contact_method, :string
	end
end

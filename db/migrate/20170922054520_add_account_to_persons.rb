class AddAccountToPersons < ActiveRecord::Migration[5.1]
	def change
  		add_column :people, :account, :string
  		add_column :people, :password, :string
  		add_column :people, :contact_method, :string
	end
end

class AddSubRegionToPets < ActiveRecord::Migration[5.1]
	def change
  		add_column :pets, :sub_region, :string
	end
end

class AddRegionIdToPets < ActiveRecord::Migration[5.1]
  def change
  		add_column :pets, :region_id, :integer
  end
end

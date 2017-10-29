class CreateBlacklists < ActiveRecord::Migration[5.1]
  def change
    create_table :blacklists do |t|
      t.integer :person_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end

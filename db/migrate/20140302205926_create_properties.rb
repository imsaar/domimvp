class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :total_bedrooms
      t.integer :total_bathrooms
      t.string :address
      t.text :description
      t.integer :commute_to_campus_in_minutes
      t.references :listing, index: true

      t.timestamps
    end
  end
end

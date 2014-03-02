class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :property, index: true
      t.references :room, index: true

      t.timestamps
    end
  end
end

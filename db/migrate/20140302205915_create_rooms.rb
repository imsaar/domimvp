class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :property, index: true
      t.references :tenant, index: true
      t.references :subletter, index: true
      t.references :listing, index: true

      t.timestamps
    end
  end
end

class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end

class CreateSubletters < ActiveRecord::Migration
  def change
    create_table :subletters do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end

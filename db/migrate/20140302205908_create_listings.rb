class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.boolean :open_to_student_only
      t.decimal :rent_per_month
      t.datetime :is_available
      t.references :user, index: true

      t.timestamps
    end
  end
end

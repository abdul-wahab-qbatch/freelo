class CreateAvailabilityHours < ActiveRecord::Migration[6.1]
  def change
    create_table :availability_hours do |t|
      t.string :start_time
      t.string :end_time
      t.integer :day
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end

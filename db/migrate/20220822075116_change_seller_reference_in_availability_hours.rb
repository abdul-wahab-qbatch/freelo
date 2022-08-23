class ChangeSellerReferenceInAvailabilityHours < ActiveRecord::Migration[6.1]
  def change
    remove_reference :availability_hours, :seller, null: false, foreign_key: true
    add_reference :availability_hours, :seller, null: false, foreign_key: {to_table: :users}
  end
end

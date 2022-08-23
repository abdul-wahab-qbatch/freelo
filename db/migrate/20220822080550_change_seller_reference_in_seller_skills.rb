class ChangeSellerReferenceInSellerSkills < ActiveRecord::Migration[6.1]
  def change
    remove_reference :seller_skills, :seller
    add_reference :seller_skills, :seller, null: false, foreign_key: {to_table: :users}
  end
end

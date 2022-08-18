class CreateSellerSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :seller_skills do |t|
      t.integer :rate
      t.references :seller, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end

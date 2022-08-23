class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.references :job, null: false, foreign_key: true
      t.references :buyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

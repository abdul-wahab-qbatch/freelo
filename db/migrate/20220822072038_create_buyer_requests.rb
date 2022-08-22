class CreateBuyerRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :buyer_requests do |t|
      t.string :title
      t.text :description
      t.references :buyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class RemoveBuyerReferenceFromBuyerRequest < ActiveRecord::Migration[6.1]
  def change
    remove_reference :buyer_requests, :buyer, null: false, foreign_key: true
    add_reference :buyer_requests, :buyer, null: false, foreign_key: { to_table: :users }
  end
end

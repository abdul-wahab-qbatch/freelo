class DropSellerAndBuyersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :sellers
    drop_table :buyers
  end
end

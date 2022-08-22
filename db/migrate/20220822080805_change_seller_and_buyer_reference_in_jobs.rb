class ChangeSellerAndBuyerReferenceInJobs < ActiveRecord::Migration[6.1]
  def change
    remove_reference :jobs, :seller
    remove_reference :jobs, :buyer
    add_reference :jobs, :seller, foreign_key: {to_table: :users}
    add_reference :jobs, :buyer, foreign_key: {to_table: :users}

  end
end

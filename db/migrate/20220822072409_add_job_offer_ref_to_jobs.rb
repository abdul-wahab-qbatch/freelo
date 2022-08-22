class AddJobOfferRefToJobs < ActiveRecord::Migration[6.1]
  def change
    add_reference :jobs, :buyer_request, null: false, foreign_key: true
  end
end

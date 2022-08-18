class RemoveSellerRefFromSkill < ActiveRecord::Migration[6.1]
  def change
    remove_reference :skills, :seller
  end
end

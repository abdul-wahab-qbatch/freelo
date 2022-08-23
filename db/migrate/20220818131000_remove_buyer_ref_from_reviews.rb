class RemoveBuyerRefFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_reference :reviews, :buyer
  end
end

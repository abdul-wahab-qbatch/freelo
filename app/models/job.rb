# == Schema Information
#
# Table name: jobs
#
#  id         :bigint           not null, primary key
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  buyer_id   :bigint           not null
#  seller_id  :bigint           not null
#
# Indexes
#
#  index_jobs_on_buyer_id   (buyer_id)
#  index_jobs_on_seller_id  (seller_id)
#
# Foreign Keys
#
#  fk_rails_...  (buyer_id => buyers.id)
#  fk_rails_...  (seller_id => sellers.id)
#
class Job < ApplicationRecord
  belongs_to :seller
  belongs_to :buyer
  has_many :reviews
end

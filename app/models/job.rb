# == Schema Information
#
# Table name: jobs
#
#  id               :bigint           not null, primary key
#  status           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  buyer_id         :bigint           not null
#  buyer_request_id :bigint           not null
#  seller_id        :bigint           not null
#
# Indexes
#
#  index_jobs_on_buyer_id          (buyer_id)
#  index_jobs_on_buyer_request_id  (buyer_request_id)
#  index_jobs_on_seller_id         (seller_id)
#
# Foreign Keys
#
#  fk_rails_...  (buyer_id => buyers.id)
#  fk_rails_...  (buyer_request_id => buyer_requests.id)
#  fk_rails_...  (seller_id => sellers.id)
#
class Job < ApplicationRecord
  belongs_to :seller, -> { where type: 'seller' }
  belongs_to :buyer, -> { where type: 'buyer' }
  has_many :reviews
  enum status: [:active, :completed, :cancelled]
  belongs_to :buyer_request
end

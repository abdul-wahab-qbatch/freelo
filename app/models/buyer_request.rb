# == Schema Information
#
# Table name: buyer_requests
#
#  id          :bigint           not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  buyer_id    :bigint           not null
#
# Indexes
#
#  index_buyer_requests_on_buyer_id  (buyer_id)
#
# Foreign Keys
#
#  fk_rails_...  (buyer_id => users.id)
#
class BuyerRequest < ApplicationRecord
  belongs_to :buyer, -> { where type: 'buyer' }
  has_one :job
end

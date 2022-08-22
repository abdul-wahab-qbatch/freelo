# == Schema Information
#
# Table name: jobs
#
#  id               :bigint           not null, primary key
#  status           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  buyer_id         :bigint
#  buyer_request_id :bigint           not null
#  seller_id        :bigint
#
# Indexes
#
#  index_jobs_on_buyer_id          (buyer_id)
#  index_jobs_on_buyer_request_id  (buyer_request_id)
#  index_jobs_on_seller_id         (seller_id)
#
# Foreign Keys
#
#  fk_rails_...  (buyer_id => users.id)
#  fk_rails_...  (buyer_request_id => buyer_requests.id)
#  fk_rails_...  (seller_id => users.id)
#
require "test_helper"

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

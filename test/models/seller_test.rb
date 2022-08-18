# == Schema Information
#
# Table name: sellers
#
#  id                     :bigint           not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_sellers_on_email                 (email) UNIQUE
#  index_sellers_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class SellerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: seller_skills
#
#  id         :bigint           not null, primary key
#  rate       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  seller_id  :bigint           not null
#  skill_id   :bigint           not null
#
# Indexes
#
#  index_seller_skills_on_seller_id  (seller_id)
#  index_seller_skills_on_skill_id   (skill_id)
#
# Foreign Keys
#
#  fk_rails_...  (seller_id => users.id)
#  fk_rails_...  (skill_id => skills.id)
#
require "test_helper"

class SellerSkillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

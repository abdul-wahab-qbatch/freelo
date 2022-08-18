# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  description :text
#  rating      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  job_id      :bigint           not null
#
# Indexes
#
#  index_reviews_on_job_id  (job_id)
#
# Foreign Keys
#
#  fk_rails_...  (job_id => jobs.id)
#
class Review < ApplicationRecord
  belongs_to :job, -> {includes :buyer}
end

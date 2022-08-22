# == Schema Information
#
# Table name: availability_hours
#
#  id         :bigint           not null, primary key
#  day        :integer
#  end_time   :string
#  start_time :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  seller_id  :bigint           not null
#
# Indexes
#
#  index_availability_hours_on_seller_id  (seller_id)
#
# Foreign Keys
#
#  fk_rails_...  (seller_id => users.id)
#
class AvailabilityHour < ApplicationRecord
  belongs_to :seller
  enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
end

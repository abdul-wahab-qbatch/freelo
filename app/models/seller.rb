# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  type                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class Seller < User
  
  has_many :availability_hours, -> { order(:day) }
  has_many :seller_skills
  has_many :skills, through: :seller_skills
  has_many :jobs
  has_many :buyers, through: :jobs
  include Viewable
end

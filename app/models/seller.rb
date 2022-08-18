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
class Seller < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :availability_hours, -> { order(:day) }
  has_many :seller_skills
  has_many :skills, through: :seller_skills
  has_many :jobs
  has_many :buyers, through: :jobs
  include Viewable
end

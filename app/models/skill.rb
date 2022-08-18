# == Schema Information
#
# Table name: skills
#
#  id              :bigint           not null, primary key
#  description     :string
#  expertise_level :float
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Skill < ApplicationRecord
  has_many :seller_skills
  has_many :sellers, through: :seller_skills
end

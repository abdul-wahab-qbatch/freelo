module Viewable
  extend ActiveSupport::Concern
  class_methods do
    def full_name
      return "#{first_name} #{last_name}" unless first_name.blank? || last_name.blank?
      'Super Admin'
    end
  end
end
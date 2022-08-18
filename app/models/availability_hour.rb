class AvailabilityHour < ApplicationRecord
  belongs_to :seller
  enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
end

class TimeSlot < ApplicationRecord
  belongs_to :restaurant
  has_many :reservations

  # attribute :start_time, :time_only
  # attribute :end_time, :time_only
end

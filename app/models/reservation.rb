class Reservation < ApplicationRecord
  belongs_to :time_slot

  STATUS = %w[BOOKED ARRIVED NO-SHOW CANCELLED FINISHED]

  validates :status, inclusion: { in: STATUS }
  validates :first_name, :date, :last_name, :email, :phone_number, :covers, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name_and_email_and_phone_number,
  against: [ :first_name, :last_name, :email, :phone_number ],
  using: {
    tsearch: { prefix: true }
  }
end

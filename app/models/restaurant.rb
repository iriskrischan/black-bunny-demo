class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :time_slots
  
end

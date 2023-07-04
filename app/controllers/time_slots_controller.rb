class TimeSlotsController < ApplicationController
  def index
    date = Date.parse(params[:date])
    covers = params[:covers].to_i
    start_datetime = date.beginning_of_day
    end_datetime = date.end_of_day
    time_slots = TimeSlot.where(start_time: start_datetime..end_datetime)
    
    available_time_slots = time_slots.select do |time_slot|
      # puts "Capacity: #{time_slot.slot_capacity}"
      # puts "Covers: #{time_slot.reservations.map(&:covers).sum.to_i}"

      booked_reservations = time_slot.reservations.where(status: ("BOOKED" || "ARRIVED"))
      # p booked_reservations.map(&:covers).sum
      # puts booked_reservations.map(&:covers).sum.to_i
      available_spaces = (time_slot.slot_capacity - booked_reservations.map(&:covers).sum.to_i)
      # puts "Avaliable Spaces: #{available_spaces}"
      # puts "-------------------------------"
      available_spaces >= covers
    end
    render json: available_time_slots
  end
end

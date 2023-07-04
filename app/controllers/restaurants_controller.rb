require "active_support"

require "active_support/core_ext/date/calculations"

class RestaurantsController < ApplicationController

  def dashboard
    @reservation = Reservation.new
    @restaurant = Restaurant.first

    ###########

    @dates_covers = []

    @reservations = Reservation.all
    reserv_status = @reservations.group_by { |res| res.status }

    reserv_booked = reserv_status["BOOKED"].nil? ? [] : reserv_status["BOOKED"]
    reserv_arrived = reserv_status["ARRIVED"].nil? ? [] : reserv_status["ARRIVED"]
    reserv_finished = reserv_status["FINISHED"].nil? ? [] : reserv_status["FINISHED"]
    reserv_covered = reserv_arrived + reserv_booked + reserv_finished
    # the nil if/else : returns an empty array for the array merge (and not returning errors)
    # gets an array of the date with the status qualified with the covers i.e. booked+arrived+finished

    @days_booked = reserv_covered.group_by { |rescover| rescover.date }
    # cannot use '&:date' as require variable
    # This is an array of hashes with the date as key and all reservation entries in an array as value

    @days_booked.each do |res_date, res_all| # res_date > key, res_all > value
      date_covers = {
        date: res_date,
        covers: 0
      }
      # create a hash called date_covers which gets res_date as value of key date
      # and covers with 0 as initial value

      date_total_covers = 0

      res_all.each do |res|
        date_total_covers += res.covers
      end

      date_covers[:covers] = date_total_covers

      @dates_covers << date_covers
    end

    #################

    # current_book = reservations_for_restaurant.pluck(:covers).sum
    # @free_tables = @capacity_max[0] - current_book.to_i
  end

  def booking
    @reservation
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.save
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
  end

  def settings
    @restaurant = Restaurant.find(params[:id])
  end

end

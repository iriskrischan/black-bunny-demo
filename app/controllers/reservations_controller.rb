class ReservationsController < ApplicationController

  def index
    @reservation = Reservation.new

    if params[:query] && params[:query] != ""
      @reservations = Reservation.search_by_first_name_and_last_name_and_email_and_phone_number(params[:query])
      @query = params[:query]
      params.delete("query")
    else
      @reservations = Reservation.all
    end

    if params[:start_date]
      @start_date = params[:start_date].to_date
    end

    if !@reservations.where(date: @start_date, status: "ARRIVED").empty?
      @reservation_edit = @reservations.where(date: @start_date, status: "ARRIVED").first
    elsif !@reservations.where(date: @start_date, status: "BOOKED").empty?
      @reservation_edit = @reservations.where(date: @start_date, status: "BOOKED").first
    elsif !@reservations.where(date: @start_date, status: "FINISHED").empty?
      @reservation_edit = @reservations.where(date: @start_date, status: "FINISHED").first
    elsif !@reservations.where(date: @start_date, status: "CANCELLED").empty?
      @reservation_edit = @reservations.where(date: @start_date, status: "CANCELLED").first
    elsif !@reservations.where(date: @start_date, status: "NO-SHOW").empty?
      @reservation_edit = @reservations.where(date: @start_date, status: "NO-SHOW").first
    end


    if @reservations.where(date: @start_date).first
      @reservations_dates = @reservations.where(date: @start_date)
    end

    @reservations = @reservations.sort_by { |r| r.time_slot.start_time }
    @query = params[:query]
    params.delete("query")
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_create_params)
    @reservation.email = @reservation.email.strip
    if @reservation.save
      head :ok
    else
      puts @reservation.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    if params[:reservation][:time_slot_id] == ""
      @reservation.update(reservation_no_time_slot_params)
    else
      @reservation.update(reservation_params)
    end
    redirect_to reservations_path(:start_date => "?#{@reservation.date}"), notice: "Reservation has been updated!"
  end

  def status
    @reservation = Reservation.find(params[:id])
    @reservation.update(change_params)
    redirect_to reservations_path(:start_date => "?#{@reservation.date}")
  end

  def clients
    @reservation = Reservation.new
    if params[:query] && params[:query] != ""
      @reservations = Reservation.search_by_first_name_and_last_name_and_email_and_phone_number(params[:query])
      @reservations = @reservations.group_by { |entry| entry.email }
      @query = params[:query]
      params.delete("query")
    else
      clients_by_email = Reservation.all.group_by { |entry| entry.email }
      excluded_key = "N/A"
      @client_email_list = clients_by_email.reject { |key, _| key == excluded_key }
      @reservations = @client_email_list
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:time_slot_id, :first_name, :last_name, :email, :phone_number, :date, :covers, :reservation_notes, :dietary_requirements)
  end

  def reservation_create_params
    params.require(:reservation).permit(:time_slot_id, :first_name, :last_name, :email, :phone_number, :date, :covers, :reservation_notes, :dietary_requirements, :status)
  end

  def reservation_no_time_slot_params
    params.require(:reservation).permit(:first_name, :last_name, :email, :phone_number, :date, :covers, :reservation_notes, :dietary_requirements)
  end

  def change_params
    params.require(:reservation).permit(:status)
  end

end

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resources)
    reservations_path(:start_date => "?#{Date.today}")
  end
end

class ApplicationController < ActionController::Base
  before_action :session_check


  private

  def session_check
    redirect_to root_path if session[:status_points].nil?
  end
end

class TopPagesController < ApplicationController
  skip_before_action :session_check

  def index
    session[:status_points] = nil
    session[:question_ids] = nil
  end
end

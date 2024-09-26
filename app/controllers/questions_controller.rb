class QuestionsController < ApplicationController
  skip_before_action :session_check, only: %i[create]

  def index
    question_id = session[:question_ids].shift
    @question = Question.includes(:options).find(question_id)
  end

  def create
    session[:status_points] = {
      love: 0,
      diligence: 0,
      freedom: 0,
      adventure: 0
    }
    question_num = rand(4..8)
    session[:question_ids] = Question.order("RANDOM()").limit(question_num).pluck(:id)
    redirect_to questions_path
  end

  def update
    option = Option.find(params[:option_id].to_i)

    session[:status_points]['love'] += option.love_point
    session[:status_points]['diligence'] += option.diligence_point
    session[:status_points]['freedom'] += option.freedom_point
    session[:status_points]['adventure'] += option.adventure_point

    # p session[:status_points] # デバック
    # p session[:question_ids]

    if session[:question_ids].empty?
      redirect_to finishes_path
    else
      redirect_to questions_path
    end
  end
end

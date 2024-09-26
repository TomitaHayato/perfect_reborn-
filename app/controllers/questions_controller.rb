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
    session[:question_ids] = Question.all.pluck(:id).shuffle

    redirect_to questions_path
  end

  def update
    session[:status_points][:love] += option_params[:love_point]
    session[:status_points][:diligence] += option_params[:diligence_point]
    session[:status_points][:freedom] += option_params[:freedom_point]
    session[:status_points][:adventure] += option_params[:adventure_point]
    if session[:question_ids].empty?
      redirect_to finishes_path
    else
      redirect_to questions_path
    end
  end

  private

  def option_params
    params.require(:option).permit(:love_point, :diligence_point, :freedom_point, :adventure_point)
  end
end

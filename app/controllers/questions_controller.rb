class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @coach_answer = params[:question]
    if params[:question].include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work'
      @coach_answer = 'Great!'
    else
      @coach_answer = 'I dont care, get dressed and go to work!'
    end
  end
end

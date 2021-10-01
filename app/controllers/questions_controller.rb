class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    questions = ['I am going to work', '?']

    if params[:question] == questions[0]
      @answer = 'Great!'
    elsif params[:question].end_with?(questions[1])
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

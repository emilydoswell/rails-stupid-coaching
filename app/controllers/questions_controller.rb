class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:answer]

    if @message[-1] == "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @message == "I am going to work"
      @coach_answer = "Great!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end

class QuestionsController < ApplicationController
  ANSWERS = {
    answer1: "Great!",
    answer2: "Silly question, get dressed and go to work!",
    answer3: "I don't care, get dressed and go to work!"
  }

  def ask
  end

  def answer
    if params[:question].include? "?"
      @answers = ANSWERS[:answer2]
    elsif params[:question] == "I am going to work"
      @answers = ANSWERS[:answer1]
    else
      @answers = ANSWERS[:answer3]
    end
  end
end

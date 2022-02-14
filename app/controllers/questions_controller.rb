class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:your_message]
    if @question == "I am going to work right now!" # go to work
      @answer = ""
    elsif @question.include? "?" # Question
      @answer = "Silly question, get dressed and go to work!"
    elsif @question != "I am going to work right now!" # Silly
      @answer = "Great!"
    end
  end
end

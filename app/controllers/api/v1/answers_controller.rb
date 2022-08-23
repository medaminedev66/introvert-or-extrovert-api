class Api::V1::AnswersController < ApplicationController
  def create
    question_id = params[:answer][:question_id]
    question = Question.find_by(id: question_id)
    answer = question.answers.new(answer_params)
    if answer.save
      render json: answer, status: :created
    else
      head(:unprocessable_entity)
    end
  end

  def destroy
    answer = Answer.find(params[:id])

    if answer.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  def update

  end

  private

  def answer_params
    params.require(:answer).permit(:text, :correct)
  end
end
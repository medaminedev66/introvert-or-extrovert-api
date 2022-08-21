class Api::V1::AnswersController < ApplicationController
  def create
    question = Question.all.find_by(id: params[:question_id])
    answer = question.answers.new(params[:text, :correct])
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
end
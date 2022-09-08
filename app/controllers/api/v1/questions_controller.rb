class Api::V1::QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    question = Question.new(question_params)

    if question.save
      render json: question, status: :created
    else
      head(:unprocessable_entity)
    end
  end

  def destroy
    question = Question.find(params[:id])

    if question.destroy
      render json: { status: 'Success', message: 'Deleted Question', data: question }, status: :ok
    else
      head(:unprocessable_entity)
    end
  end

  def update
    question = Question.find(params[:id])

    if question.update(question_params)
      render json: { status: 'Success', message: 'Updated Question', data: question }, status: :ok
    else
      head(:unprocessable_entity)
    end
  end

  private

  def question_params
    params.require(:question).permit(:text)
  end
end

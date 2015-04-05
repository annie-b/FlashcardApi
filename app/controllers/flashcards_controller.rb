class FlashcardsController < ApplicationController

  before_filter :authenticate

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @flashcards = @category.flashcards
      render json: @flashcards, status: 200
    else
      @flashcards = Flashcard.all
      render json: @flashcards, status: :ok
    end
  end

  def show
    @flashcard = Flashcard.find(params[:id])
    render json: @flashcard
  end

  def create
    @category = Category.find(params[:category_id])
    @flashcard = Flashcard.new(flashcard_params)
    @category.flashcards << flashcard
    if @flashcard.save
      render json: @flashcard, status: :created
    else
      render json: @flashcard.errors, status: :unprocessable_entity
    end
  end

  def update
    @flashcard = Flashcard.find(params[:id])
    if @flashcard.update(flashcard_params)
      render json: @flashcard, status: :ok
    else
      render json: @flashcard, status: :unprocessable_entity
    end
  end

  private
  def flashcard_params
    params.require(:flashcard).permit(:id, :term, :definition)
  end
end

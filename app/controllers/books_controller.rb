class BooksController < ApplicationController
  before_action :load_user, only: %i(show)

  def show; end

  def index
    @books = Book.all
  end

  private

    def load_user
      @book = Book.find_by id: params[:id]
      return if @book
      flash[:none] = t "none"
      redirect_to root_path
    end
end

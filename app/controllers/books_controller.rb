class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    book = Book.create(book_params)
    redirect_to book_path(book.id)
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end

end

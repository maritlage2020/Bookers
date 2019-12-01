class BooksController < ApplicationController
  def new
      @books = Book.all
  	  @book = Book.new
  end

  def create
  	  book = Book.new(book_params)
  	  book.save
  	  redirect_to book_path(book)
  end

  def index
      @books = Book.all
  end

  def show
      @book = Book.find(params[:id])
  end

  def edit
      @book = Book.find(params[:id])
  end

  def update
      book = Book.find(params[:id])
      book.update(book_params)
      redirect_to book_path(book.id)
  end
  def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to books_new_path
      flash[:notice] = "Book was successfull destroyed"
  end
  private
  def book_params
      params.require(:book).permit(:title, :body)
  end

end

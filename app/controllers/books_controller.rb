class BooksController < ApplicationController
  def new
      @books = Book.all
  	  @book = Book.new
  end

  def create
  	  book = Book.new(book_params)
  	  book.save
  	  redirect_to post_path(book)
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
       rediret_to post_path(book)
       end
  private
  def book_params
      params.require(:list).permit(:title, :body)
  end
end

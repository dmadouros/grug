class BooksController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @books = @author.books
  end

  def new
    @author = Author.find(params[:author_id])
    @book = @author.books.new
  end

  def create
    @author = Author.find(params[:author_id])
    @book = @author.books.new(params[:book])
    if @book.save
      redirect_to author_books_url(@author), notice: 'Book saved successfully!'
    else
      render 'new'
    end
  end
end

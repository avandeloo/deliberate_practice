class BooksController < ApplicationController

  def index
    @books = Book.all

  end

  def new
  end

  def create
    book = Book.create(
                       name: params[:name],
                       author: params[:author],
                       publisher: params[:publisher],
                       release_date: params[:release_date],
                       image: params[:image],
                       available: params[:available],
                       description: params[:description]

                      )
  end

  def show
  end

  def edit
  end

  def update
    book = Book.find(params[:id])

    book.name = params[:name]
    book.author = params[:author]
    book.publisher = params[:publisher]
    book.release_date = params[:release_date]
    book.image = params[:image]
    book.available = params[:available]
    book.description = params[:description]

    book.save
  end

  def destroy
  end

end

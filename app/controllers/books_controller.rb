# frozen_string_literal: true

class BooksController < ProtectedController
  before_action :set_book, only: %i[update destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all

    render json: @books
  end

  # GET /books/1
  # GET /books/1.json
  def show
    render json: Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = current_user.books.build(book_params)

    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy

    head :no_content
  end

  def set_book
    @book = current_user.books.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author)
  end

  private :set_book, :book_params
end

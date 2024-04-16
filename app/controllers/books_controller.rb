class BooksController < ApplicationController

  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end 
  
  def index
  end 

  def show
  end

  def edit
  end
  
  private

def book_params
  params.require(:book).permit(:title, :body)
end
end 
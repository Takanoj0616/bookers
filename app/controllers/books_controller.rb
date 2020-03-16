class BooksController < ApplicationController
  def edit
  	@book = Book.new
  end

  def index
          @books = Book.all
          @book = Book.new
  end

  def show
        @book = Book.find(params[:id])
  end

  def edit
        @book = Book.find(params[:id])
  end

  def update
  	    book = Book.find(params[:id])
        if book.update(book_params)
          flash[:notice] = "successfully"
          redirect_to book_path(book.id)
        end
  end

  def destroy
  	    book = Book.find(params[:id]) #データ(レコード)を1件取得
        book.destroy #データ（レコード）を削除
        redirect_to books_path #ダイレクト
  end

  def create
         @book = Book.new(book_params)
        if @book.save
           flash[:notice] = "successfully"
           redirect_to book_path(@book.id)
        else
          @books = Book.all
          render 'index'
        end

end

    private

  def book_params
        params.require(:book).permit(:title,:body)
  end
end

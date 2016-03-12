class BooksController < ApplicationController
  def index
    render :action => 'list'
  end

  def list
    @book_pages, @books = paginate :books, :per_page => 10
  end
end

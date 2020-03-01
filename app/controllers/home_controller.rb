class HomeController < ApplicationController
  def index
  end
  def about
     @book = Book.new
     @books = Book.all
  end
  def show
  end
end

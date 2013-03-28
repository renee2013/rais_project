class BookController < ApplicationController
  layout 'standard'
  def list
    @books = Book.all
  end
  def show
    @book = Book.find(params[:id])
  end
  def new
    @book = Book.new
    @subjects = Subject.all
  end
  def create
    @book = Book.new(params[:book])
    if @book.save
      redirect_to :action => 'list'
    else
      @subjects = Subject.all
      redirect_to :action => 'new'
    end
    @subjects = Subject.all
  end
  def edit
    @book = Book.find(params[:id])
    @subjects = Subject.all
  end
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(params[:book])
        redirect_to :action => 'show', :id=>@book
    else
      @subjects = Subject.all
      redirect_to :action => 'edit'
    end
  end
  def delete
    Book.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def show_subjects
    @subject = Subject.find(params[:id])
  end
end

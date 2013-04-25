class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(params[:author])
    if @author.save
      redirect_to authors_url, notice: 'Author saved successfully!'
    else
      render 'new'
    end
  end
end

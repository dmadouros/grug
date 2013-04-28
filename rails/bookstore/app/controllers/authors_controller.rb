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
      flash[:notice] = 'Author saved successfully!'
      redirect_to authors_url
    else
      render 'new'
    end
  end
end

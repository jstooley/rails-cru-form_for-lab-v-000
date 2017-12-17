class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
  end

  def update
  end
end

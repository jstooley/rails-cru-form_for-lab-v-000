class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Artist.new(artists_params(:name, :bio))
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
  end
end

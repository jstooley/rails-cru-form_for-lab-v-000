class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
  end

  def update
  end

  def songs_params(*args)
  	params.require(:song).permit(*args)
	end
end

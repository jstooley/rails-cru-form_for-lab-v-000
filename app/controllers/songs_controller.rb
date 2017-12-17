class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(songs_params(:name))
    @song.save
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(songs_params(:name))
    @song.save
    redirect_to song_path(@song)
  end

  def songs_params(*args)
  	params.require(:song).permit(*args)
	end
end

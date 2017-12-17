class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
      @artist = Artist.new(artists_params(:name, :bio))
  end

  def update
  end

  private
  def artists_params(*args)
  	params.require(:artist).permit(*args)
	end
end

end

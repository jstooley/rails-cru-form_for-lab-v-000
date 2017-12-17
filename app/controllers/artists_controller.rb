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
      @artist = Artist.new()
  end

  def update
  end

  private
  def artists_params(*args)
  	params.require(:school_class).permit(*args)
	end
end

end

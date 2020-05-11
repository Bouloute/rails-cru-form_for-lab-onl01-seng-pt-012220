class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by(id: params[:id])
  end
  
  def new 
    @artist = Artist.new
  end 
  
  def create
    @artist = Artist.create(params.require(:artist).permit(:name, :bio))
	  redirect_to artist_path(@artist)
  end
end

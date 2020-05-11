class SongsController < ApplicationController
  def show
    @song = Song.find_by(id: params[:id])
  end
  
  def new
    @song = Song.new
  end 
  
  def create
    @song = Song.create(params.require(:song).permit(:name))
	  redirect_to song_path(@song)
  end
  
  def update
	  @song = Song.find(params[:id])
	  @song.update(params.require(:song).permit(:name))
	  redirect_to song_path(@song)
	end

	def edit
	  @song = Song.find(params[:id])
	end
end

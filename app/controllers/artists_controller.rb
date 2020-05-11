class ArtistsController < ApplicationController
  def show
    @artist = Artist.find_by(id: params[:id])
  end
  
  def new 
    @artist = Artist.new
  end 
  
  def create
    
  end
end

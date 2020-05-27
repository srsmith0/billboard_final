class ArtistsController < ApplicationController
  def index
  end

  def show
    set_artist
  end

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end
end

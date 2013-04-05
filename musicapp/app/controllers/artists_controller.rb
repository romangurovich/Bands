class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.first_name = params[:artist][:first_name]
    @artist.last_name = params[:artist][:last_name]
    if @artist.save
      flash.now.notice = "Artist '#{@artist.title}' created."
      redirect_to artist_path(@artist)
    else
      flash.notice = @artist.errors.full_messages
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes(params[:artist])
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end


end

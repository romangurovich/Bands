class SongsController < ApplicationController
  def index
    @songs = Song.all
    @albums = Album.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @album_id = params[:album_id]
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.album_id = params[:song][:album_id]
    if @song.save
      flash.now.notice = "Song '#{@song.name}' created."
      redirect_to song_path(@song)
    else
      flash.notice = @song.errors.full_messages
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update_attributes(params[:song])
    redirect_to song_path(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end


end

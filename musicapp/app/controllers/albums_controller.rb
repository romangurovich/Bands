class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
    @band_id = params[:band_id]
  end

  def create
    @album = Album.new
    @album.title = params[:album][:title]
    @album.band_id = params[:album][:band_id]
    @album.save
    flash.now.notice = "Album '#{@album.title}' created."
    redirect_to album_path(@album)
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    redirect_to album_path(@album)
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end


end

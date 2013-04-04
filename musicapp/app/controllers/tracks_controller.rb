class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new
    @track.name = params[:track][:name]
    @track.song_id = params[:track][:song_id]
    @track.save
    redirect_to track_path(@track)
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    @track.update_attributes(params[:track])
    redirect_to track_path(@track)
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_path
  end


end

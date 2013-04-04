class SinglesController < ApplicationController
  def index
    @singles = Single.all
  end

  def show
    @single = Single.find(params[:id])
  end

  def new
    @single = Single.new
  end

  def create
    @single = Single.new
    @single.name = params[:single][:name]
    @single.band_id = params[:single][:band_id]
    @single.save
    redirect_to single_path(@single)
  end

  def edit
    @single = Single.find(params[:id])
  end

  def update
    @single = Single.find(params[:id])
    @single.update_attributes(params[:single])
    redirect_to single_path(@single)
  end

  def destroy
    @single = Single.find(params[:id])
    @single.destroy
    redirect_to singles_path
  end


end

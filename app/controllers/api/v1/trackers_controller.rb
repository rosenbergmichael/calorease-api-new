class Api::V1::TrackersController < ApplicationController
  def index
    @trackers = Tracker.all 
    render json: @trackers
  end


  def create
    @tracker = Tracker.new(tracker_params)
    if @tracker.save
      render json: @tracker 
    else
      render json: {error: 'Error, please try again.'}
    end
  end


  def show
    @tracker = Tracker.find(params[:id])
    render json: @tracker
  end


  def destroy
    @tracker = Tracker.find(params[:id])
    @tracker.destroy
  end

  
  private

  def tracker_params
    params.require(:tracker).permit(:day, :date, :totalcal)
  end


end



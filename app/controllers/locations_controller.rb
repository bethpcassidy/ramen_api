class LocationsController < ApplicationController
  before_action :set_location, only: %i[ show update destroy ]

  def index
    @locations = Location.all
    render "location/index"
  end

  def show
    @location = Location.find(params[:id])
    render "location/show"
  end

  def create
    @location = Location.create(
      location_name: params[:location_name],
      zip_id: params[:zip_id],
      menu: params[:menu],
    )
    render json: @location
  end

  def update
    @location = Location.find(params[:id])
    @location.update(
      location_name: params[:location_name],
      zip_id: params[:zip_id],
      menu: params[:menu],
    )
    render :show, status: :created, location: @bio
  end

  def destroy
    @locations = Location.all
    @location = Location.find(params[:id])
    @location.destroy
    render json: @locations
  end

  def set_location
    @zip = Location.find(params[:id])
  end
end

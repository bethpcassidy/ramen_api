class LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def show
    @location = Location.find(params[:id])
    render json: @location
  end

  def create
    @location = Location.create(
      location_name: params[:location_name],
      zipcode: params[:zipcode],
      menu: params[:menu],
    )
    render json: @location
  end

  def update
    @location = Location.find(params[:id])
    @location.update(
      location_name: params[:location_name],
      zipcode: params[:zipcode],
      menu: params[:menu],
    )
    render json: @location
  end

  def destroy
    @locations = Location.all
    @location = Location.find(params[:id])
    @location.destroy
    render json: @locations
  end
end

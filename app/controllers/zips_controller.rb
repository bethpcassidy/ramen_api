class ZipsController < ApplicationController
  def index
    @zips = Zip.all
    render json: @zips
  end

  def show
    @zip = Zip.find(params[:id])
    render json: @zip
  end


  def create
    @zip = Zip.create(
      zip_number: params[:zip_number]
    )
    render json: @zip
  end

  def update
    @zip = Zip.find(params[:id])
    @zip.update(
      zip_number: params[:zip_number]
    )
    render json: @zip
  end

  def destroy
    @zips = Zip.all
    @zip = Zip.find(params[:id])
    @zip.destroy
    render json: @zips
end

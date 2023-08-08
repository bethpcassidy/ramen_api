class ZipsController < ApplicationController
  before_action :set_zip, only: %i[ show update destroy ]

  def index
    @zips = Zip.all
    render :index
  end

  def show
    @zip = Zip.find(params[:id])
    render :show
  end

  def create
    @zip = Zip.create(
      zip_number: params[:zip_number],
    )
    render json: @zip
  end

  def update
    @zip = Zip.find(params[:id])
    @zip.update(
      zip_number: params[:zip_number],
    )
    render json: @zip
  end

  def destroy
    @zips = Zip.all
    @zip = Zip.find(params[:id])
    @zip.destroy
    render json: @zips
  end

  def set_zip
    @zip = Zip.find(params[:id])
  end
end

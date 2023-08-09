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
      x: params[:x],
      y: params[:y],
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

  def math
    #   #ok so my idea here is instead of pinging maps api each time, set an internal x/y coordinate for each restaurant and dictate distance based on that. eventually might swap the logic here to a better system with different tables
    #   @zips = Zip.all

    # @zip = Zip.find(params[:zip_number])
    @zips = Zip.all
    i2 = 0
    i = 0
    array = []
    while i < @zips.length
      if @zips[i].zip_number == params[:zip_number]
        array << @zips[i]
        i2 = i
      end
      i = i + 1
    end

    #allows for a get request query by zipcode, step 2 is getting the rest to show up in order as well

    i1 = 0
    d = 0
    while i1 < @zips.length
      if @zips[i1].zip_number == params[:zip_number]
      else
        d = Math.sqrt((@zips[i2].x - @zips[i1].x) ** 2 + (@zips[i2].y - @zips[i1].y) ** 2)
        @zips[i1].d = d
        array << @zips[i1]
        #applies distance formula between searched point and each point in the database
      end
      i1 = i1 + 1
    end
    @zips = array

    # @zips = Zip.find(:zip_number params[:zip_number])

    render :math
  end
end

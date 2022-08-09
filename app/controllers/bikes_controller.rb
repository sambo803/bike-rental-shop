class BikesController < ApplicationController
  def index
    bikes = Bike.all
    render json: bikes.as_json
  end

  def create
    bike = Bike.new(
      brand: params[:brand],
      style: params[:style],
      price: params[:price],
      image_url: params[:image_url],
    )
    bike.save
    render json: bike.as_json
  end
end

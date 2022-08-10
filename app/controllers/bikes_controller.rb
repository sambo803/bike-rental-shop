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

  def show
    bike = Bike.find_by(id: params[:id])
    render json: bike.as_json
  end

  def update
    bike = Bike.find_by(id: params[:id])
    bike.brand = params[:brand] || bike.brand
    bike.style = params[:style] || bike.style
    bike.price = params[:price] || bike.price
    bike.image_url = params[:image_url] || bike.image_url
    bike.save
    render json: bike.as_json
  end

  def destroy
    bike = Bike.find_by(id: params[:id])
    bike.destroy
    render json: { message: "bike has been destroyed" }
  end
end

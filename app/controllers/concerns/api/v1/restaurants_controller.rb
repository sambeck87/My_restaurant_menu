class Api::V1::RestaurantsController < Api::V1::ApplicationController
  def index
    @restaurants = Restaurant.includes(:address, categories: :dishes).distinct
    render json: @restaurants, include: {address: {}, categories: {include: :dishes}}
  end

  def show_by_name
    @restaurant = Restaurant.includes(:address, categories: :dishes).find_by(name: params[:name])
    render json: @restaurant, include: {address: {}, categories: {include: :dishes}}
  end
end

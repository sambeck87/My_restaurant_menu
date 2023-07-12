class Api::V1::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurants.joins(:address, :category, :dish).distinct
    render json: @restaurants, include: %i[address category dish]
  end
end

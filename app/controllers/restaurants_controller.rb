class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :error_response
    def index
        restaurants = Restaurant.all
        render json: restaurants, include:['restaurant.pizzas'], status: :ok
    end

    def show
        restaurants = Restaurant.find(params[:id])
        render json: restaurants, status: :ok
    end

    def destroy
        restaurants = Restaurant.find(params[:id])
        restaurants.destroy
        head :no_content
    end
    
    private
    def error_response
        render json: {error:"Restaurant not found"}, status: :not_found
    end
end

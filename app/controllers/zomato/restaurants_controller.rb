class Zomato::RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(name:'item',status: true)
  end

  def show
    @foods = @restaurant.foods
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end

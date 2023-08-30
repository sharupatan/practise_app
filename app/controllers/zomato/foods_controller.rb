class Zomato::FoodsController < ApplicationController
	before_action :set_food, only: [:show, :edit, :update, :destroy]
	before_action :set_restaurant
  
  def index
    @foods = @restaurant.foods
  end

  def new
    @food = Food.new
  end

  def create
    @food = @restaurant.foods.create(name:'dosa')
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_food
    @food = Food.find_by(id:params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find_by(id:params[:restaurant_id])
    if @restaurant.nil?
      redirect_to zomato_restaurants_path
    end
  end
end
class Zomato::RestaurantsController < ApplicationController
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
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
